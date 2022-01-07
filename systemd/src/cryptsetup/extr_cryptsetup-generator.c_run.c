
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROC_CMDLINE_STRIP_RD_PREFIX ;
 int add_crypttab_devices () ;
 int add_proc_cmdline_devices () ;
 char* arg_crypttab ;
 char const* arg_dest ;
 int arg_disks ;
 int arg_enabled ;
 char* arg_runtime_directory ;
 int assert_se (char const*) ;
 int crypt_device_hash_ops ;
 scalar_t__ getenv (char*) ;
 int hashmap_new (int *) ;
 int log_oom () ;
 int log_warning_errno (int,char*) ;
 int parse_proc_cmdline_item ;
 int proc_cmdline_parse (int ,int *,int ) ;

__attribute__((used)) static int run(const char *dest, const char *dest_early, const char *dest_late) {
        int r;

        assert_se(arg_dest = dest);

        arg_crypttab = getenv("SYSTEMD_CRYPTTAB") ?: "/etc/crypttab";
        arg_runtime_directory = getenv("RUNTIME_DIRECTORY") ?: "/run/systemd/cryptsetup";

        arg_disks = hashmap_new(&crypt_device_hash_ops);
        if (!arg_disks)
                return log_oom();

        r = proc_cmdline_parse(parse_proc_cmdline_item, ((void*)0), PROC_CMDLINE_STRIP_RD_PREFIX);
        if (r < 0)
                return log_warning_errno(r, "Failed to parse kernel command line: %m");

        if (!arg_enabled)
                return 0;

        r = add_crypttab_devices();
        if (r < 0)
                return r;

        r = add_proc_cmdline_devices();
        if (r < 0)
                return r;

        return 0;
}
