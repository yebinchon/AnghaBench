
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_sysroot_mount () ;
 int add_sysroot_usr_mount () ;
 int add_volatile_root () ;
 int add_volatile_var () ;
 char const* arg_dest ;
 char const* arg_dest_late ;
 scalar_t__ arg_fstab_enabled ;
 int assert_se (char const*) ;
 int determine_root () ;
 int generator_enable_remount_fs_service (char const*) ;
 scalar_t__ in_initrd () ;
 int log_warning_errno (int,char*) ;
 int parse_fstab (int) ;
 int parse_proc_cmdline_item ;
 int proc_cmdline_parse (int ,int *,int ) ;

__attribute__((used)) static int run(const char *dest, const char *dest_early, const char *dest_late) {
        int r, r2 = 0, r3 = 0;

        assert_se(arg_dest = dest);
        assert_se(arg_dest_late = dest_late);

        r = proc_cmdline_parse(parse_proc_cmdline_item, ((void*)0), 0);
        if (r < 0)
                log_warning_errno(r, "Failed to parse kernel command line, ignoring: %m");

        (void) determine_root();


        if (in_initrd()) {
                r = add_sysroot_mount();

                r2 = add_sysroot_usr_mount();

                r3 = add_volatile_root();
        } else
                r = add_volatile_var();


        if (arg_fstab_enabled) {

                r2 = parse_fstab(0);


                if (in_initrd())
                        r3 = parse_fstab(1);
                else
                        r3 = generator_enable_remount_fs_service(arg_dest);
        }

        return r < 0 ? r : r2 < 0 ? r2 : r3;
}
