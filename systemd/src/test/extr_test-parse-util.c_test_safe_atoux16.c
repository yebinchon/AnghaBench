
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int EINVAL ;
 int ERANGE ;
 int assert_se (int) ;
 int safe_atoux16 (char*,int*) ;

__attribute__((used)) static void test_safe_atoux16(void) {
        int r;
        uint16_t l;

        r = safe_atoux16("1234", &l);
        assert_se(r == 0);
        assert_se(l == 0x1234);

        r = safe_atoux16("abcd", &l);
        assert_se(r == 0);
        assert_se(l == 0xabcd);

        r = safe_atoux16("  1234", &l);
        assert_se(r == 0);
        assert_se(l == 0x1234);

        r = safe_atoux16("12345", &l);
        assert_se(r == -ERANGE);

        r = safe_atoux16("-1", &l);
        assert_se(r == -ERANGE);

        r = safe_atoux16("  -1", &l);
        assert_se(r == -ERANGE);

        r = safe_atoux16("junk", &l);
        assert_se(r == -EINVAL);

        r = safe_atoux16("123x", &l);
        assert_se(r == -EINVAL);

        r = safe_atoux16("12.3", &l);
        assert_se(r == -EINVAL);

        r = safe_atoux16("", &l);
        assert_se(r == -EINVAL);
}
