
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* destination; struct TYPE_4__* source; } ;
typedef TYPE_1__ BindMount ;


 int assert (int ) ;
 int free (TYPE_1__*) ;

void bind_mount_free_many(BindMount *b, size_t n) {
        size_t i;

        assert(b || n == 0);

        for (i = 0; i < n; i++) {
                free(b[i].source);
                free(b[i].destination);
        }

        free(b);
}
