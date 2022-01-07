
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lv_refcount; } ;
typedef TYPE_1__ list_T ;
struct TYPE_9__ {int ref; TYPE_1__* list; } ;
struct TYPE_8__ {scalar_t__ (* tp_alloc ) (TYPE_2__*,int ) ;} ;
typedef TYPE_2__ PyTypeObject ;
typedef int PyObject ;
typedef TYPE_3__ ListObject ;


 int lastlist ;
 int pyll_add (int *,int *,int *) ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static PyObject *
ListNew(PyTypeObject *subtype, list_T *list)
{
    ListObject *self;

    self = (ListObject *) subtype->tp_alloc(subtype, 0);
    if (self == ((void*)0))
 return ((void*)0);
    self->list = list;
    ++list->lv_refcount;

    pyll_add((PyObject *)(self), &self->ref, &lastlist);

    return (PyObject *)(self);
}
