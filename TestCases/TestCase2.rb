#{{{ Marathon
require_fixture 'default'
#}}} Marathon

def test

    java_recorded_version = '1.7.0_95'
    with_window("Add/Remove JList") {
        select("myList", "[]")
        click("Add")
    }

    with_window("Error") {
        click("OK")
    }

    with_window("Add/Remove JList") {
        select("name", "test")
        select("surname", "test")
        select("identifiant", "555-HHH")
        click("Add")
    }

    with_window("Error") {
        click("OK")
    }

    with_window("Add/Remove JList") {
        select("identifiant", "555-HHH-777")
        click("Add")
        select("myList", "[test---test---555-HHH-777]")
        select("name", "Test1")
        select("surname", "test1")
        select("identifiant", "555-MMM-444")
        click("Add")
        select("myList", "[Test1---test1---555-MMM-444]")
        click("Delete")
        select("myList", "[test---test---555-HHH-777]")
        click("Delete")
    }

end
