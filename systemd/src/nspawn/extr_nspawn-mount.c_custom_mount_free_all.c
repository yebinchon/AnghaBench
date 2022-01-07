
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* type_argument; int lower; struct TYPE_5__* rm_rf_tmpdir; struct TYPE_5__* work_dir; struct TYPE_5__* options; struct TYPE_5__* destination; struct TYPE_5__* source; } ;
typedef TYPE_1__ CustomMount ;


 int REMOVE_PHYSICAL ;
 int REMOVE_ROOT ;
 int free (TYPE_1__*) ;
 int rm_rf (TYPE_1__*,int) ;
 int strv_free (int ) ;

void custom_mount_free_all(CustomMount *l, size_t n) {
        size_t i;

        for (i = 0; i < n; i++) {
                CustomMount *m = l + i;

                free(m->source);
                free(m->destination);
                free(m->options);

                if (m->work_dir) {
                        (void) rm_rf(m->work_dir, REMOVE_ROOT|REMOVE_PHYSICAL);
                        free(m->work_dir);
                }

                if (m->rm_rf_tmpdir) {
                        (void) rm_rf(m->rm_rf_tmpdir, REMOVE_ROOT|REMOVE_PHYSICAL);
                        free(m->rm_rf_tmpdir);
                }

                strv_free(m->lower);
                free(m->type_argument);
        }

        free(l);
}
