
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UnitFileFlags ;
struct TYPE_3__ {scalar_t__ type; char* path; } ;
typedef TYPE_1__ UnitFileChange ;


 char** STRV_MAKE (char const*) ;
 int UNIT_FILE_DRY_RUN ;
 int UNIT_FILE_RUNTIME ;
 int UNIT_FILE_SYSTEM ;
 scalar_t__ UNIT_FILE_UNLINK ;
 scalar_t__ arg_runtime ;
 int log_error_errno (int,char*,char const*) ;
 int printf (char*,char*) ;
 int unit_file_disable (int ,int,int *,char**,TYPE_1__**,size_t*) ;

__attribute__((used)) static int show_installation_targets_client_side(const char *name) {
        UnitFileChange *changes = ((void*)0);
        size_t n_changes = 0, i;
        UnitFileFlags flags;
        char **p;
        int r;

        p = STRV_MAKE(name);
        flags = UNIT_FILE_DRY_RUN |
                (arg_runtime ? UNIT_FILE_RUNTIME : 0);

        r = unit_file_disable(UNIT_FILE_SYSTEM, flags, ((void*)0), p, &changes, &n_changes);
        if (r < 0)
                return log_error_errno(r, "Failed to get file links for %s: %m", name);

        for (i = 0; i < n_changes; i++)
                if (changes[i].type == UNIT_FILE_UNLINK)
                        printf("  %s\n", changes[i].path);

        return 0;
}
