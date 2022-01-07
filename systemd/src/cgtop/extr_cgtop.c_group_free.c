
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int path; } ;
typedef TYPE_1__ Group ;


 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;

__attribute__((used)) static Group *group_free(Group *g) {
        if (!g)
                return ((void*)0);

        free(g->path);
        return mfree(g);
}
