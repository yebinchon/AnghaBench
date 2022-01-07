
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* pll_prev; TYPE_1__* pll_next; } ;
typedef TYPE_2__ pylinkedlist_T ;
struct TYPE_5__ {TYPE_2__* pll_prev; } ;



__attribute__((used)) static void
pyll_remove(pylinkedlist_T *ref, pylinkedlist_T **last)
{
    if (ref->pll_prev == ((void*)0))
    {
 if (ref->pll_next == ((void*)0))
 {
     *last = ((void*)0);
     return;
 }
    }
    else
 ref->pll_prev->pll_next = ref->pll_next;

    if (ref->pll_next == ((void*)0))
 *last = ref->pll_prev;
    else
 ref->pll_next->pll_prev = ref->pll_prev;
}
