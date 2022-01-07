
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


 int ListAttrs ;
 int ListMethods ;
 int * ObjectDir (int *,int ) ;
 int * PyInt_FromLong (int ) ;
 int * Py_FindMethod (int ,int *,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static PyObject *
ListGetattr(PyObject *self, char *name)
{
    if (strcmp(name, "locked") == 0)
 return PyInt_FromLong(((ListObject *)(self))->list->lv_lock);
    else if (strcmp(name, "__members__") == 0)
 return ObjectDir(((void*)0), ListAttrs);

    return Py_FindMethod(ListMethods, self, name);
}
