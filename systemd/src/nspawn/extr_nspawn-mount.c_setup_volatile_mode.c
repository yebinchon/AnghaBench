
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int VolatileMode ;





 int setup_volatile_overlay (char const*,int,int ,int ,char const*) ;
 int setup_volatile_state (char const*,int,int ,int ,char const*) ;
 int setup_volatile_yes (char const*,int,int ,int ,char const*) ;

int setup_volatile_mode(
                const char *directory,
                VolatileMode mode,
                bool userns, uid_t uid_shift, uid_t uid_range,
                const char *selinux_apifs_context) {

        switch (mode) {

        case 128:
                return setup_volatile_yes(directory, userns, uid_shift, uid_range, selinux_apifs_context);

        case 129:
                return setup_volatile_state(directory, userns, uid_shift, uid_range, selinux_apifs_context);

        case 130:
                return setup_volatile_overlay(directory, userns, uid_shift, uid_range, selinux_apifs_context);

        default:
                return 0;
        }
}
