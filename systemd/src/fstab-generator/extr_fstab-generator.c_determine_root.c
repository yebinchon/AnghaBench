
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_root_hash ;
 scalar_t__ arg_root_what ;
 int log_info (char*,scalar_t__) ;
 int log_oom () ;
 scalar_t__ strdup (char*) ;

__attribute__((used)) static int determine_root(void) {


        if (arg_root_what)
                return 0;

        if (!arg_root_hash)
                return 0;

        arg_root_what = strdup("/dev/mapper/root");
        if (!arg_root_what)
                return log_oom();

        log_info("Using verity root device %s.", arg_root_what);

        return 1;
}
