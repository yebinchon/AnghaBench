
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ lv_lock; } ;
typedef TYPE_1__ list_T ;
struct TYPE_7__ {TYPE_1__* list; } ;
typedef int PyObject ;
typedef TYPE_2__ ListObject ;


 int * PyDict_New () ;
 int Py_DECREF (int *) ;
 int Py_INCREF (TYPE_2__*) ;
 int RAISE_LOCKED_LIST ;
 int list_py_concat (TYPE_1__*,int *,int *) ;

__attribute__((used)) static PyObject *
ListConcatInPlace(ListObject *self, PyObject *obj)
{
    list_T *l = self->list;
    PyObject *lookup_dict;

    if (l->lv_lock)
    {
 RAISE_LOCKED_LIST;
 return ((void*)0);
    }

    if (!(lookup_dict = PyDict_New()))
 return ((void*)0);

    if (list_py_concat(l, obj, lookup_dict) == -1)
    {
 Py_DECREF(lookup_dict);
 return ((void*)0);
    }
    Py_DECREF(lookup_dict);

    Py_INCREF(self);
    return (PyObject *)(self);
}
