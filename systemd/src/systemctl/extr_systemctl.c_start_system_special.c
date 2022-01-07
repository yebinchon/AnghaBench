
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 scalar_t__ UNIT_FILE_GLOBAL ;
 scalar_t__ UNIT_FILE_SYSTEM ;
 scalar_t__ arg_scope ;
 int log_error_errno (int ,char*,char*) ;
 int start_special (int,char**,void*) ;

__attribute__((used)) static int start_system_special(int argc, char *argv[], void *userdata) {


        if (arg_scope != UNIT_FILE_SYSTEM)
                return log_error_errno(SYNTHETIC_ERRNO(EINVAL),
                                       "Bad action for %s mode.",
                                       arg_scope == UNIT_FILE_GLOBAL ? "--global" : "--user");

        return start_special(argc, argv, userdata);
}
