
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 int assert_se (int) ;
 int parse_permille_unbounded (char*) ;

__attribute__((used)) static void test_parse_permille_unbounded(void) {
        assert_se(parse_permille_unbounded("1001‰") == 1001);
        assert_se(parse_permille_unbounded("4000‰") == 4000);
        assert_se(parse_permille_unbounded("2147483647‰") == 2147483647);
        assert_se(parse_permille_unbounded("2147483648‰") == -ERANGE);
        assert_se(parse_permille_unbounded("4294967295‰") == -ERANGE);
        assert_se(parse_permille_unbounded("4294967296‰") == -ERANGE);

        assert_se(parse_permille_unbounded("101%") == 1010);
        assert_se(parse_permille_unbounded("400%") == 4000);
        assert_se(parse_permille_unbounded("214748364.7%") == 2147483647);
        assert_se(parse_permille_unbounded("214748364.8%") == -ERANGE);
        assert_se(parse_permille_unbounded("429496729.5%") == -ERANGE);
        assert_se(parse_permille_unbounded("429496729.6%") == -ERANGE);
}
