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
            "🍓", // strawberry
            "🍌", // banana
            "🍉", // watermelon
            "🍊", // tangerine
            "🍋", // lemon
            "🍎", // red apple
            "🍏", // green apple
            "🍐", // pear
            "🍈", // melon
            "🍍", // pineapple
            "🍑", // peach
            "🍒", // cherries
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
            "🥞", // pancakes
            "🧇", // waffle
            "🥯", // bagel
            "🥔", // potato
            "🍞", // bread
            "🥐", // croissant
            "🥖", // baguette bread
            "🫓", // flat bread
            "🥨", // pretzel
            "🍼", // baby bottle
            "🧋", // bubble tea
            "🍠", // roasted sweet potato
            "🍚", // cooked rice
            "🍙", // rice ball
            "🍆", // eggplant
            "🥥", // coconut
            "🥪", // sandwich
            "🥙", // pita sandwich
            "🥫", // canned food
            "🥟", // dumpling
            "🥡", // takeout box
            "🍦", // soft ice cream
            "🎂", // birthday cake
            "🥠", // fortune cookie
            "🍥", // fish cake with swirl
            "🍢", // oden
            "🌮", // taco
       ]

        return medium
    }()

    private static let slow: [String] = {
        var slow = [
            "🍕", // pizza
            "🍔", // hamburger
            "🍟", // french fries
            "🌭", // hot dog
            "🌯", // burrito
            "🫘", // beans
            "🫔", // tamale
            "🥑", // avocado
            "🍩", // doughnut
            "🍪", // cookie
            "🧁", // cupcake
            "🍨", // ice cream
            "🍝", // spaghetti
            "🥚", // egg
            "🍳", // cooking
            "🥜", // peanuts
            "🍖", // meat on bone
            "🍗", // poultry leg
            "🥓", // bacon
            "🥩", // cut of meat
            "🍫", // chocolate bar
            "🍰", // shortcake
            "🥧", // pie
            "🥮", // moon cake
            "🧀", // cheese wedge
            "🍜", // steaming bowl (ramen / noodle soup)
            "🧆", // falafel
            "🍮", // custard
            "🧈", // butter
            "🌰", // chestnut
            "🫕", // fondue
            "🍲", // pot of food
            "🍣", // sushi
            "🥘", // pan of food
            "🍱", // bento box
            "🍛", // curry rice
            "🍤", // fried shrimp
            "🦪", // oyster
            "🦴", // bone
        ]

        return slow
    }()

    private static let other: [String] = {
        var other = [
            "❓",
            "🍽", // fork and knife with plate            
            "🥣", // bowl with spoon
            "🍵", // teacup without handle            
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
            "🥢", // chopsticks
            "🍴", // fork and knife
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
