
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_REALM_SYSTEMD ;
 int log_get_max_level () ;
 int log_open () ;
 int log_parse_environment () ;
 int log_set_max_level_realm (int ,int ) ;
 int mac_selinux_init () ;
 int parse_argv (int,char**) ;
 int udev_parse_config () ;
 int udevadm_main (int,char**) ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        int r;

        udev_parse_config();
        log_parse_environment();
        log_open();

        r = parse_argv(argc, argv);
        if (r <= 0)
                return r;

        log_set_max_level_realm(LOG_REALM_SYSTEMD, log_get_max_level());

        mac_selinux_init();
        return udevadm_main(argc, argv);
}
