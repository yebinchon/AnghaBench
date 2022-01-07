
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numnodes; int * head; scalar_t__ numele; } ;
typedef TYPE_1__ rax ;


 int * raxNewNode (int ,int ) ;
 int rax_free (TYPE_1__*) ;
 TYPE_1__* rax_malloc (int) ;

rax *raxNew(void) {
    rax *rax = rax_malloc(sizeof(*rax));
    if (rax == ((void*)0)) return ((void*)0);
    rax->numele = 0;
    rax->numnodes = 1;
    rax->head = raxNewNode(0,0);
    if (rax->head == ((void*)0)) {
        rax_free(rax);
        return ((void*)0);
    } else {
        return rax;
    }
}
