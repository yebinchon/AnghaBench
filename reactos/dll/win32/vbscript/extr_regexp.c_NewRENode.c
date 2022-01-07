
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pool; } ;
struct TYPE_6__ {int * kid; int * next; int op; } ;
typedef int REOp ;
typedef TYPE_1__ RENode ;
typedef TYPE_2__ CompilerState ;


 TYPE_1__* heap_pool_alloc (int ,int) ;

__attribute__((used)) static RENode *
NewRENode(CompilerState *state, REOp op)
{
    RENode *ren;

    ren = heap_pool_alloc(state->pool, sizeof(*ren));
    if (!ren) {

        return ((void*)0);
    }
    ren->op = op;
    ren->next = ((void*)0);
    ren->kid = ((void*)0);
    return ren;
}
