
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dv_refcount; } ;
typedef TYPE_1__ dict_T ;
struct TYPE_9__ {int ref; TYPE_1__* dict; } ;
struct TYPE_8__ {scalar_t__ (* tp_alloc ) (TYPE_2__*,int ) ;} ;
typedef TYPE_2__ PyTypeObject ;
typedef int PyObject ;
typedef TYPE_3__ DictionaryObject ;


 int lastdict ;
 int pyll_add (int *,int *,int *) ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static PyObject *
DictionaryNew(PyTypeObject *subtype, dict_T *dict)
{
    DictionaryObject *self;

    self = (DictionaryObject *) subtype->tp_alloc(subtype, 0);
    if (self == ((void*)0))
 return ((void*)0);
    self->dict = dict;
    ++dict->dv_refcount;

    pyll_add((PyObject *)(self), &self->ref, &lastdict);

    return (PyObject *)(self);
}
