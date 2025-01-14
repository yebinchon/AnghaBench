
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_bus_label_escape_one (char*,char*) ;

__attribute__((used)) static void test_bus_label_escape(void) {
        test_bus_label_escape_one("foo123bar", "foo123bar");
        test_bus_label_escape_one("foo.bar", "foo_2ebar");
        test_bus_label_escape_one("foo_2ebar", "foo_5f2ebar");
        test_bus_label_escape_one("", "_");
        test_bus_label_escape_one("_", "_5f");
        test_bus_label_escape_one("1", "_31");
        test_bus_label_escape_one(":1", "_3a1");
}
