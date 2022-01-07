
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ nsec_t ;


 int assert_se (int) ;
 scalar_t__ config_parse_nsec (char*,char*,int,char*,int,char*,int ,char const*,scalar_t__*,int *) ;

__attribute__((used)) static void test_config_parse_nsec_one(const char *rvalue, nsec_t expected) {
        nsec_t v = 0;

        assert_se(config_parse_nsec("unit", "filename", 1, "nsection", 1, "lvalue", 0, rvalue, &v, ((void*)0)) >= 0);
        assert_se(expected == v);
}
