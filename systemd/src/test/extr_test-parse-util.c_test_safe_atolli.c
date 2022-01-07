
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERANGE ;
 int assert_se (int) ;
 int safe_atolli (char*,long long*) ;

__attribute__((used)) static void test_safe_atolli(void) {
        int r;
        long long l;

        r = safe_atolli("12345", &l);
        assert_se(r == 0);
        assert_se(l == 12345);

        r = safe_atolli("  12345", &l);
        assert_se(r == 0);
        assert_se(l == 12345);

        r = safe_atolli("-12345", &l);
        assert_se(r == 0);
        assert_se(l == -12345);

        r = safe_atolli("  -12345", &l);
        assert_se(r == 0);
        assert_se(l == -12345);

        r = safe_atolli("12345678901234567890", &l);
        assert_se(r == -ERANGE);

        r = safe_atolli("-12345678901234567890", &l);
        assert_se(r == -ERANGE);

        r = safe_atolli("junk", &l);
        assert_se(r == -EINVAL);

        r = safe_atolli("123x", &l);
        assert_se(r == -EINVAL);

        r = safe_atolli("12.3", &l);
        assert_se(r == -EINVAL);

        r = safe_atolli("", &l);
        assert_se(r == -EINVAL);
}
