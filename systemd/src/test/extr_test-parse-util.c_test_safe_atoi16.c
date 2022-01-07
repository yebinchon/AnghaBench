
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int EINVAL ;
 int ERANGE ;
 int assert_se (int) ;
 int safe_atoi16 (char*,int*) ;

__attribute__((used)) static void test_safe_atoi16(void) {
        int r;
        int16_t l;

        r = safe_atoi16("-12345", &l);
        assert_se(r == 0);
        assert_se(l == -12345);

        r = safe_atoi16("  -12345", &l);
        assert_se(r == 0);
        assert_se(l == -12345);

        r = safe_atoi16("32767", &l);
        assert_se(r == 0);
        assert_se(l == 32767);

        r = safe_atoi16("  32767", &l);
        assert_se(r == 0);
        assert_se(l == 32767);

        r = safe_atoi16("36536", &l);
        assert_se(r == -ERANGE);

        r = safe_atoi16("-32769", &l);
        assert_se(r == -ERANGE);

        r = safe_atoi16("junk", &l);
        assert_se(r == -EINVAL);

        r = safe_atoi16("123x", &l);
        assert_se(r == -EINVAL);

        r = safe_atoi16("12.3", &l);
        assert_se(r == -EINVAL);

        r = safe_atoi16("", &l);
        assert_se(r == -EINVAL);
}
