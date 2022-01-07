
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 scalar_t__ config_parse_log_facility (char*,char*,int,char*,int,char*,int ,char const*,int*,int *) ;

__attribute__((used)) static void test_config_parse_log_facility_one(const char *rvalue, int expected) {
        int log_facility = 0;

        assert_se(config_parse_log_facility("unit", "filename", 1, "section", 1, "lvalue", 0, rvalue, &log_facility, ((void*)0)) >= 0);
        assert_se(expected == log_facility);
}
