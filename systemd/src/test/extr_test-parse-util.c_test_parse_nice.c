
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERANGE ;
 int assert_se (int) ;
 int parse_nice (char*,int*) ;

__attribute__((used)) static void test_parse_nice(void) {
        int n;

        assert_se(parse_nice("0", &n) >= 0 && n == 0);
        assert_se(parse_nice("+0", &n) >= 0 && n == 0);
        assert_se(parse_nice("-1", &n) >= 0 && n == -1);
        assert_se(parse_nice("-2", &n) >= 0 && n == -2);
        assert_se(parse_nice("1", &n) >= 0 && n == 1);
        assert_se(parse_nice("2", &n) >= 0 && n == 2);
        assert_se(parse_nice("+1", &n) >= 0 && n == 1);
        assert_se(parse_nice("+2", &n) >= 0 && n == 2);
        assert_se(parse_nice("-20", &n) >= 0 && n == -20);
        assert_se(parse_nice("19", &n) >= 0 && n == 19);
        assert_se(parse_nice("+19", &n) >= 0 && n == 19);

        assert_se(parse_nice("", &n) == -EINVAL);
        assert_se(parse_nice("-", &n) == -EINVAL);
        assert_se(parse_nice("+", &n) == -EINVAL);
        assert_se(parse_nice("xx", &n) == -EINVAL);
        assert_se(parse_nice("-50", &n) == -ERANGE);
        assert_se(parse_nice("50", &n) == -ERANGE);
        assert_se(parse_nice("+50", &n) == -ERANGE);
        assert_se(parse_nice("-21", &n) == -ERANGE);
        assert_se(parse_nice("20", &n) == -ERANGE);
        assert_se(parse_nice("+20", &n) == -ERANGE);
}
