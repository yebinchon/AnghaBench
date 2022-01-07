
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_efi_secure_boot () ;
 int log_info (char*,...) ;
 int mac_apparmor_use () ;
 int mac_selinux_use () ;
 int mac_smack_use () ;
 int mac_tomoyo_use () ;
 int use_audit () ;
 int use_ima () ;
 int yes_no (int ) ;

__attribute__((used)) static void print_securities(void) {
        log_info("------ enabled security technologies ------");
        log_info("SELinux: %s", yes_no(mac_selinux_use()));
        log_info("AppArmor: %s", yes_no(mac_apparmor_use()));
        log_info("Tomoyo: %s", yes_no(mac_tomoyo_use()));
        log_info("IMA: %s", yes_no(use_ima()));
        log_info("SMACK: %s", yes_no(mac_smack_use()));
        log_info("Audit: %s", yes_no(use_audit()));
        log_info("UEFI secure boot: %s", yes_no(is_efi_secure_boot()));
        log_info("-------------------------------------------");
}
