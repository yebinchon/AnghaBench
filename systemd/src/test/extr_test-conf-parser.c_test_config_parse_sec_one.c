
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;


 int assert_se (int) ;
 scalar_t__ config_parse_sec (char*,char*,int,char*,int,char*,int ,char const*,scalar_t__*,int *) ;

__attribute__((used)) static void test_config_parse_sec_one(const char *rvalue, usec_t expected) {
        usec_t v = 0;

        assert_se(config_parse_sec("unit", "filename", 1, "section", 1, "lvalue", 0, rvalue, &v, ((void*)0)) >= 0);
        assert_se(expected == v);
}
