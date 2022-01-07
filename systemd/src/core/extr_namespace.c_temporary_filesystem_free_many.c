
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* options; struct TYPE_4__* path; } ;
typedef TYPE_1__ TemporaryFileSystem ;


 int assert (int ) ;
 int free (TYPE_1__*) ;

void temporary_filesystem_free_many(TemporaryFileSystem *t, size_t n) {
        size_t i;

        assert(t || n == 0);

        for (i = 0; i < n; i++) {
                free(t[i].path);
                free(t[i].options);
        }

        free(t);
}
