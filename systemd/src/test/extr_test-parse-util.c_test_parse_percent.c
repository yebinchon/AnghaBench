
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERANGE ;
 int assert_se (int) ;
 int parse_percent (char*) ;

__attribute__((used)) static void test_parse_percent(void) {
        assert_se(parse_percent("") == -EINVAL);
        assert_se(parse_percent("foo") == -EINVAL);
        assert_se(parse_percent("0") == -EINVAL);
        assert_se(parse_percent("50") == -EINVAL);
        assert_se(parse_percent("100") == -EINVAL);
        assert_se(parse_percent("-1") == -EINVAL);
        assert_se(parse_percent("0%") == 0);
        assert_se(parse_percent("55%") == 55);
        assert_se(parse_percent("100%") == 100);
        assert_se(parse_percent("-7%") == -ERANGE);
        assert_se(parse_percent("107%") == -ERANGE);
        assert_se(parse_percent("%") == -EINVAL);
        assert_se(parse_percent("%%") == -EINVAL);
        assert_se(parse_percent("%1") == -EINVAL);
        assert_se(parse_percent("1%%") == -EINVAL);
        assert_se(parse_percent("3.2%") == -EINVAL);
}
