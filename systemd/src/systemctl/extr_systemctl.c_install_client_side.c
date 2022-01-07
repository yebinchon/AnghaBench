
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UNIT_FILE_GLOBAL ;
 int arg_root ;
 scalar_t__ arg_scope ;
 scalar_t__ getenv_bool (char*) ;
 int isempty (int ) ;
 scalar_t__ running_in_chroot_or_offline () ;
 scalar_t__ sd_booted () ;

__attribute__((used)) static bool install_client_side(void) {



        if (running_in_chroot_or_offline())
                return 1;

        if (sd_booted() <= 0)
                return 1;

        if (!isempty(arg_root))
                return 1;

        if (arg_scope == UNIT_FILE_GLOBAL)
                return 1;


        if (getenv_bool("SYSTEMCTL_INSTALL_CLIENT_SIDE") > 0)
                return 1;

        return 0;
}
