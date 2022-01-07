
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERANGE ;
 int assert_se (int) ;
 int parse_permille (char*) ;

__attribute__((used)) static void test_parse_permille(void) {
        assert_se(parse_permille("") == -EINVAL);
        assert_se(parse_permille("foo") == -EINVAL);
        assert_se(parse_permille("0") == -EINVAL);
        assert_se(parse_permille("50") == -EINVAL);
        assert_se(parse_permille("100") == -EINVAL);
        assert_se(parse_permille("-1") == -EINVAL);

        assert_se(parse_permille("0‰") == 0);
        assert_se(parse_permille("555‰") == 555);
        assert_se(parse_permille("1000‰") == 1000);
        assert_se(parse_permille("-7‰") == -ERANGE);
        assert_se(parse_permille("1007‰") == -ERANGE);
        assert_se(parse_permille("‰") == -EINVAL);
        assert_se(parse_permille("‰‰") == -EINVAL);
        assert_se(parse_permille("‰1") == -EINVAL);
        assert_se(parse_permille("1‰‰") == -EINVAL);
        assert_se(parse_permille("3.2‰") == -EINVAL);

        assert_se(parse_permille("0%") == 0);
        assert_se(parse_permille("55%") == 550);
        assert_se(parse_permille("55.5%") == 555);
        assert_se(parse_permille("100%") == 1000);
        assert_se(parse_permille("-7%") == -ERANGE);
        assert_se(parse_permille("107%") == -ERANGE);
        assert_se(parse_permille("%") == -EINVAL);
        assert_se(parse_permille("%%") == -EINVAL);
        assert_se(parse_permille("%1") == -EINVAL);
        assert_se(parse_permille("1%%") == -EINVAL);
        assert_se(parse_permille("3.21%") == -EINVAL);
}
