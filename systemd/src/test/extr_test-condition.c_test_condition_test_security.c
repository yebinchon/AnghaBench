
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Condition ;


 int CONDITION_SECURITY ;
 int assert_se (int) ;
 int condition_free (int *) ;
 int * condition_new (int ,char*,int,int) ;
 scalar_t__ condition_test (int *) ;
 scalar_t__ is_efi_secure_boot () ;
 scalar_t__ mac_apparmor_use () ;
 scalar_t__ mac_selinux_use () ;
 scalar_t__ mac_smack_use () ;
 scalar_t__ mac_tomoyo_use () ;
 scalar_t__ use_audit () ;
 scalar_t__ use_ima () ;

__attribute__((used)) static void test_condition_test_security(void) {
        Condition *condition;

        condition = condition_new(CONDITION_SECURITY, "garbage oifdsjfoidsjoj", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == 0);
        condition_free(condition);

        condition = condition_new(CONDITION_SECURITY, "selinux", 0, 1);
        assert_se(condition);
        assert_se(condition_test(condition) != mac_selinux_use());
        condition_free(condition);

        condition = condition_new(CONDITION_SECURITY, "apparmor", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == mac_apparmor_use());
        condition_free(condition);

        condition = condition_new(CONDITION_SECURITY, "tomoyo", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == mac_tomoyo_use());
        condition_free(condition);

        condition = condition_new(CONDITION_SECURITY, "ima", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == use_ima());
        condition_free(condition);

        condition = condition_new(CONDITION_SECURITY, "smack", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == mac_smack_use());
        condition_free(condition);

        condition = condition_new(CONDITION_SECURITY, "audit", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == use_audit());
        condition_free(condition);

        condition = condition_new(CONDITION_SECURITY, "uefi-secureboot", 0, 0);
        assert_se(condition);
        assert_se(condition_test(condition) == is_efi_secure_boot());
        condition_free(condition);
}
