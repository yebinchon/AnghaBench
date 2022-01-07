
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* source; struct TYPE_4__* path; } ;
typedef TYPE_1__ PortableChange ;


 int assert (int ) ;
 int free (TYPE_1__*) ;

void portable_changes_free(PortableChange *changes, size_t n_changes) {
        size_t i;

        assert(changes || n_changes == 0);

        for (i = 0; i < n_changes; i++) {
                free(changes[i].path);
                free(changes[i].source);
        }

        free(changes);
}
