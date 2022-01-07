
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_id128_t ;


 int ID128_PLAIN ;
 int SD_ID128_NULL ;
 int SD_ID128_STRING_MAX ;
 scalar_t__ arg_commit ;
 scalar_t__ arg_print ;
 int arg_root ;
 int id128_read (char const*,int ,int *) ;
 int log_error_errno (int,char*) ;
 int log_open () ;
 int log_parse_environment () ;
 int machine_id_commit (int ) ;
 int machine_id_setup (int ,int ,int *) ;
 int parse_argv (int,char**) ;
 char* prefix_roota (int ,char*) ;
 int puts (int ) ;
 int sd_id128_to_string (int ,char*) ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        char buf[SD_ID128_STRING_MAX];
        sd_id128_t id;
        int r;

        log_parse_environment();
        log_open();

        r = parse_argv(argc, argv);
        if (r <= 0)
                return r;

        if (arg_commit) {
                const char *etc_machine_id;

                r = machine_id_commit(arg_root);
                if (r < 0)
                        return r;

                etc_machine_id = prefix_roota(arg_root, "/etc/machine-id");
                r = id128_read(etc_machine_id, ID128_PLAIN, &id);
                if (r < 0)
                        return log_error_errno(r, "Failed to read machine ID back: %m");
        } else {
                r = machine_id_setup(arg_root, SD_ID128_NULL, &id);
                if (r < 0)
                        return r;
        }

        if (arg_print)
                puts(sd_id128_to_string(id, buf));

        return 0;
}
