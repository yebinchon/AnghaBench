
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int size; int isnull; scalar_t__ iskey; scalar_t__ iscompr; } ;
typedef TYPE_1__ raxNode ;
struct TYPE_13__ {int numnodes; } ;
typedef TYPE_2__ rax ;
typedef int child ;


 int debugnode (char*,TYPE_1__*) ;
 int memcpy (TYPE_1__**,TYPE_1__**,int) ;
 void* raxGetData (TYPE_1__*) ;
 TYPE_1__** raxNodeLastChildPtr (TYPE_1__*) ;
 int rax_free (TYPE_1__*) ;

void raxRecursiveFree(rax *rax, raxNode *n, void (*free_callback)(void*)) {
    debugnode("free traversing",n);
    int numchildren = n->iscompr ? 1 : n->size;
    raxNode **cp = raxNodeLastChildPtr(n);
    while(numchildren--) {
        raxNode *child;
        memcpy(&child,cp,sizeof(child));
        raxRecursiveFree(rax,child,free_callback);
        cp--;
    }
    debugnode("free depth-first",n);
    if (free_callback && n->iskey && !n->isnull)
        free_callback(raxGetData(n));
    rax_free(n);
    rax->numnodes--;
}
