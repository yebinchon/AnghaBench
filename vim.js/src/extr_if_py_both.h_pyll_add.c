
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pll_obj; struct TYPE_4__* pll_next; struct TYPE_4__* pll_prev; } ;
typedef TYPE_1__ pylinkedlist_T ;
typedef int PyObject ;



__attribute__((used)) static void
pyll_add(PyObject *self, pylinkedlist_T *ref, pylinkedlist_T **last)
{
    if (*last == ((void*)0))
 ref->pll_prev = ((void*)0);
    else
    {
 (*last)->pll_next = ref;
 ref->pll_prev = *last;
    }
    ref->pll_next = ((void*)0);
    ref->pll_obj = self;
    *last = ref;
}
