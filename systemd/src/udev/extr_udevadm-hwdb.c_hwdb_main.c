
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 int arg_hwdb_bin_dir ;
 int arg_root ;
 int arg_strict ;
 scalar_t__ arg_test ;
 scalar_t__ arg_update ;
 int hwdb_query (scalar_t__) ;
 int hwdb_update (int ,int ,int ,int) ;
 int log_error_errno (int ,char*) ;
 int parse_argv (int,char**) ;

int hwdb_main(int argc, char *argv[], void *userdata) {
        int r;

        r = parse_argv(argc, argv);
        if (r <= 0)
                return r;

        if (!arg_update && !arg_test)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "Either --update or --test must be used.");

        if (arg_update) {
                r = hwdb_update(arg_root, arg_hwdb_bin_dir, arg_strict, 1);
                if (r < 0)
                        return r;
        }

        if (arg_test)
                return hwdb_query(arg_test);

        return 0;
}
