
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ secure_getenv (char*) ;

__attribute__((used)) static inline const char* fstab_path(void) {
        return secure_getenv("SYSTEMD_FSTAB") ?: "/etc/fstab";
}
