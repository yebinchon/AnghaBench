
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_addr {int dummy; } ;


 int assert_se (int) ;
 int config_parse_hwaddr (char*,char*,int,char*,int,char*,int ,char const*,struct ether_addr**,int *) ;
 struct ether_addr* ether_addr_equal (struct ether_addr const*,struct ether_addr*) ;
 int free (struct ether_addr*) ;

__attribute__((used)) static void test_config_parse_hwaddr_one(const char *rvalue, int ret, const struct ether_addr* expected) {
        struct ether_addr *actual = ((void*)0);
        int r;

        r = config_parse_hwaddr("network", "filename", 1, "section", 1, "lvalue", 0, rvalue, &actual, ((void*)0));
        assert_se(ret == r);
        if (expected) {
                assert_se(actual);
                assert_se(ether_addr_equal(expected, actual));
        } else
                assert_se(actual == ((void*)0));

        free(actual);
}
