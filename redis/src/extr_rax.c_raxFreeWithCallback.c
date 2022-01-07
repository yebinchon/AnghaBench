
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ numnodes; int head; } ;
typedef TYPE_1__ rax ;


 int assert (int) ;
 int raxRecursiveFree (TYPE_1__*,int ,void (*) (void*)) ;
 int rax_free (TYPE_1__*) ;

void raxFreeWithCallback(rax *rax, void (*free_callback)(void*)) {
    raxRecursiveFree(rax,rax->head,free_callback);
    assert(rax->numnodes == 0);
    rax_free(rax);
}
