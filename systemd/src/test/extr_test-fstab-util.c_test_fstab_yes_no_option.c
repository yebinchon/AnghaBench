
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_se (int) ;
 int fstab_test_yes_no_option (char*,char*) ;

__attribute__((used)) static void test_fstab_yes_no_option(void) {
        assert_se(fstab_test_yes_no_option("nofail,fail,nofail", "nofail\0fail\0") == 1);
        assert_se(fstab_test_yes_no_option("nofail,nofail,fail", "nofail\0fail\0") == 0);
        assert_se(fstab_test_yes_no_option("abc,cde,afail", "nofail\0fail\0") == 0);
        assert_se(fstab_test_yes_no_option("nofail,fail=0,nofail=0", "nofail\0fail\0") == 1);
        assert_se(fstab_test_yes_no_option("nofail,nofail=0,fail=0", "nofail\0fail\0") == 0);
}
