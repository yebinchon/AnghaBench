
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getenv (char*) ;
 scalar_t__ geteuid () ;
 scalar_t__ streq_ptr (int ,char*) ;

__attribute__((used)) static bool avoid_deadlock(void) {






        if (geteuid() != 0)
                return 0;

        return streq_ptr(getenv("SYSTEMD_ACTIVATION_UNIT"), "systemd-resolved.service") &&
               streq_ptr(getenv("SYSTEMD_ACTIVATION_SCOPE"), "system");
}
