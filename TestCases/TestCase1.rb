#{{{ Marathon
require_fixture 'default'
#}}} Marathon

def test

    java_recorded_version = '1.7.0_95'
    with_window("Add/Remove JList") {
        doubleclick("name")
        select("name", "ayari")
        select("surname", "mahmoud")
        select("identifiant", "444-GGG-")
        click("Add")
    }

    with_window("Error") {
        click("OK")
    }

    with_window("Add/Remove JList") {
        select("identifiant", "444-GGG-4")
        click("Add")
    }

    with_window("Error") {
        click("OK")
    }

    with_window("Add/Remove JList") {
        select("identifiant", "444-GGG-455")
        click("Add")
        select("name", "soudou")
        select("surname", "zakariae")
        select("identifiant", "555-YYY-222")
        click("Add")
        select("myList", "[soudou---zakariae---555-YYY-222]")
        click("Delete")
        select("myList", "[ayari---mahmoud---444-GGG-455]")
        click("Delete")
    }

end
