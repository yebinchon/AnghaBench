
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOPNOTSUPP ;

__attribute__((used)) static inline int efi_reboot_to_firmware_supported(void) {
        return -EOPNOTSUPP;
}
