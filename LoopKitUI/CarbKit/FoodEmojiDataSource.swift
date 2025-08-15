//
//  FoodEmojiDataSource.swift
//  LoopKit
//
//  Copyright © 2017 LoopKit Authors. All rights reserved.
//

public func CarbAbsorptionInputController() -> EmojiInputController {
    return EmojiInputController.instance(withEmojis: FoodEmojiDataSource())
}


final class FoodEmojiDataSource: EmojiDataSource {
    private static let fast: [String] = {
        var fast = [
            "🍭", // lollipop
            "🧃", // juice box
            "🥤", // cup with straw (soda)
            "🍬", // candy
            "🍯", // honey pot
            "🍇", // grapes
            "🫐", // blueberries
            "🍈", // melon
            "🍉", // watermelon
            "🍊", // tangerine
            "🍋", // lemon
            "🍌", // banana
            "🍍", // pineapple
            "🍎", // red apple
            "🍏", // green apple
            "🍐", // pear
            "🍑", // peach
            "🍒", // cherries
            "🍓", // strawberry
            "🥝", // kiwi fruit
            "🥭", // mango
            "🌽", // ear of corn
            "🥕", // carrot
            "🌶", // hot pepper
            "🫑", // bell pepper
            "🧅", // onion
            "🧄", // garlic
            "🥒", // cucumber
            "🥗", // green salad
            "🥬", // leafy green
            "🍄", // mushroom
            "🥦", // broccoli
            "🍅", // tomato
            "🍿", // popcorn
            "🍘", // rice cracker
            "🍡", // dango
            "🍧", // shaved ice
            "☕️", // coffee
            "🫖" // tea
        ]

        return fast
    }()

    private static let medium: [String] = {
        var medium = [
            "🥔", // potato
            "🍆", // eggplant
            "🥥", // coconut
            "🍞", // bread
            "🥐", // croissant
            "🥖", // baguette bread
            "🥯", // bagel
            "🫓", // flat bread
            "🥨", // pretzel
            "🥞", // pancakes
            "🧇", // waffle
            "🍙", // rice ball
            "🍚", // cooked rice
            "🍼", // baby bottle
            "🧋", // bubble tea
            "🍠", // roasted sweet potato
            "🍤", // fried shrimp
            "🦪", // oyster
            "🍥", // fish cake with swirl
            "🥪", // sandwich
            "🥙", // pita sandwich
            "🥫", // canned food
            "🥟", // dumpling
            "🥡", // takeout box
            "🍢", // oden
            "🍣", // sushi
            "🍦", // soft ice cream
            "🎂", // birthday cake
            "🥠", // fortune cookie
            "🌮", // taco
       ]

        return medium
    }()

    private static let slow: [String] = {
        var slow = [
            "🍕", // pizza
            "🥑", // avocado
            "🥚", // egg
            "🥜", // peanuts
            "🥛", // glass of milk
            "🍮", // custard
            "🥧", // pie
            "🍨", // ice cream
            "🍩", // doughnut
            "🍪", // cookie
            "🧁", // cupcake
            "🧆", // falafel
            "🫔", // tamale
            "🥮", // moon cake
            "🍰", // shortcake
            "🍫", // chocolate bar
            "🌰", // chestnut
            "🧀", // cheese wedge
            "🫕", // fondue
            "🍖", // meat on bone
            "🍗", // poultry leg
            "🥓", // bacon
            "🍔", // hamburger
            "🌭", // hot dog
            "🌯", // burrito
            "🍝", // spaghetti
            "🥩", // cut of meat
            "🍟", // french fries
            "🫘", // beans
            "🍳", // cooking
            "🍲", // pot of food
            "🥘", // pan of food
            "🍱", // bento box
            "🍛", // curry rice
            "🍜", // steaming bowl (ramen / noodle soup)
            "🧈", // butter
            "🦴", // bone
        ]

        return slow
    }()

    private static let other: [String] = {
        var other = [
            "❓",
            "🍶", // sake
            "🍾", // bottle with popping cork
            "🍷", // wine glass
            "🍸", // cocktail glass
            "🍺", // beer mug
            "🍻", // clinking beer mugs
            "🥂", // clinking glasses
            "🥃", // tumbler glass
            "🍹", // tropical drink
            "🧉", // mate
            "🫗", // pouring liquid
            "🥣", // bowl with spoon
            "🥢", // chopsticks
            "🍵", // teacup without handle
            "🍴", // fork and knife
            "🍽", // fork and knife with plate
            "🥄", // spoon
            "🫙", // jar
            "🧊", // ice cube
            "🧂", // salt
            "1️⃣", "2️⃣", "3️⃣", "4️⃣", "5️⃣",
            "6️⃣", "7️⃣", "8️⃣", "9️⃣", "🔟"
        ]

        return other
    }()

    let sections: [EmojiSection]

    init() {
        sections = [
            EmojiSection(
                title: LocalizedString("Fast", comment: "Section title for fast absorbing food"),
                items: type(of: self).fast,
                indexSymbol: " 🍭 "
            ),
            EmojiSection(
                title: LocalizedString("Medium", comment: "Section title for medium absorbing food"),
                items: type(of: self).medium,
                indexSymbol: "🌮"
            ),
            EmojiSection(
                title: LocalizedString("Slow", comment: "Section title for slow absorbing food"),
                items: type(of: self).slow,
                indexSymbol: "🍕"
            ),
            EmojiSection(
                title: LocalizedString("Other", comment: "Section title for no-carb food"),
                items: type(of: self).other,
                indexSymbol: "⋯ "
            )
        ]
    }
}
