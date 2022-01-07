
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* list; } ;
struct TYPE_4__ {scalar_t__ lv_lock; } ;
typedef int PyObject ;
typedef TYPE_2__ ListObject ;


 int N_ (char*) ;
 int PyErr_FORMAT (int ,int ,char*) ;
 int PyErr_SET_STRING (int ,int ) ;
 int PyExc_AttributeError ;
 int PyExc_TypeError ;
 int PyObject_IsTrue (int *) ;
 scalar_t__ VAR_FIXED ;
 scalar_t__ VAR_LOCKED ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
ListSetattr(ListObject *self, char *name, PyObject *valObject)
{
    if (valObject == ((void*)0))
    {
 PyErr_SET_STRING(PyExc_AttributeError,
  N_("cannot delete vim.List attributes"));
 return -1;
    }

    if (strcmp(name, "locked") == 0)
    {
 if (self->list->lv_lock == VAR_FIXED)
 {
     PyErr_SET_STRING(PyExc_TypeError, N_("cannot modify fixed list"));
     return -1;
 }
 else
 {
     int istrue = PyObject_IsTrue(valObject);
     if (istrue == -1)
  return -1;
     else if (istrue)
  self->list->lv_lock = VAR_LOCKED;
     else
  self->list->lv_lock = 0;
 }
 return 0;
    }
    else
    {
 PyErr_FORMAT(PyExc_AttributeError, N_("cannot set attribute %s"), name);
 return -1;
    }
}
