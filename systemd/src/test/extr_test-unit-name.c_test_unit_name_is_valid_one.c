
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UnitNameFlags ;


 int UNIT_NAME_INSTANCE ;
 int UNIT_NAME_PLAIN ;
 int UNIT_NAME_TEMPLATE ;
 int assert_se (int) ;
 int log_info (char*,char const*,char*,char*,char*,int ) ;
 int unit_name_is_valid (char const*,int) ;
 int yes_no (int) ;

__attribute__((used)) static void test_unit_name_is_valid_one(const char *name, UnitNameFlags flags, bool expected) {
        log_info("%s ( %s%s%s ): %s",
                 name,
                 (flags & UNIT_NAME_PLAIN) ? "plain" : "",
                 (flags & UNIT_NAME_INSTANCE) ? " instance" : "",
                 (flags & UNIT_NAME_TEMPLATE) ? " template" : "",
                 yes_no(expected));
        assert_se(unit_name_is_valid(name, flags) == expected);
}
