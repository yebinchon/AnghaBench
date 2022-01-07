
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* list; } ;
struct TYPE_3__ {int lv_lock; } ;
typedef int PyObject ;
typedef TYPE_2__ ListObject ;


 int GET_ATTR_STRING (int ,int *) ;
 int * PyLong_FromLong (int ) ;
 int * PyObject_GenericGetAttr (int *,int *) ;
 int name ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static PyObject *
ListGetattro(PyObject *self, PyObject *nameobj)
{
    GET_ATTR_STRING(name, nameobj);

    if (strcmp(name, "locked") == 0)
 return PyLong_FromLong(((ListObject *) (self))->list->lv_lock);

    return PyObject_GenericGetAttr(self, nameobj);
}
