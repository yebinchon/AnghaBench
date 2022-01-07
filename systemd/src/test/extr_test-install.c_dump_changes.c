
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; char* path; char* source; } ;
typedef TYPE_1__ UnitFileChange ;


 scalar_t__ UNIT_FILE_SYMLINK ;
 scalar_t__ UNIT_FILE_UNLINK ;
 int assert_se (int ) ;
 int printf (char*,char*,...) ;

__attribute__((used)) static void dump_changes(UnitFileChange *c, unsigned n) {
        unsigned i;

        assert_se(n == 0 || c);

        for (i = 0; i < n; i++) {
                if (c[i].type == UNIT_FILE_UNLINK)
                        printf("rm '%s'\n", c[i].path);
                else if (c[i].type == UNIT_FILE_SYMLINK)
                        printf("ln -s '%s' '%s'\n", c[i].source, c[i].path);
        }
}
