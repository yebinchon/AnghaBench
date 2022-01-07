
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int EINVAL ;
 int ERANGE ;
 int assert_se (int) ;
 int safe_atou16 (char*,int*) ;

__attribute__((used)) static void test_safe_atou16(void) {
        int r;
        uint16_t l;

        r = safe_atou16("12345", &l);
        assert_se(r == 0);
        assert_se(l == 12345);

        r = safe_atou16("  12345", &l);
        assert_se(r == 0);
        assert_se(l == 12345);

        r = safe_atou16("123456", &l);
        assert_se(r == -ERANGE);

        r = safe_atou16("-1", &l);
        assert_se(r == -ERANGE);

        r = safe_atou16("  -1", &l);
        assert_se(r == -ERANGE);

        r = safe_atou16("junk", &l);
        assert_se(r == -EINVAL);

        r = safe_atou16("123x", &l);
        assert_se(r == -EINVAL);

        r = safe_atou16("12.3", &l);
        assert_se(r == -EINVAL);

        r = safe_atou16("", &l);
        assert_se(r == -EINVAL);
}
