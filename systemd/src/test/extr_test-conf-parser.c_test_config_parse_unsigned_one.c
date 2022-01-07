
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 scalar_t__ config_parse_unsigned (char*,char*,int,char*,int,char*,int ,char const*,unsigned int*,int *) ;

__attribute__((used)) static void test_config_parse_unsigned_one(const char *rvalue, unsigned expected) {
        unsigned v = 0;

        assert_se(config_parse_unsigned("unit", "filename", 1, "section", 1, "lvalue", 0, rvalue, &v, ((void*)0)) >= 0);
        assert_se(expected == v);
}
