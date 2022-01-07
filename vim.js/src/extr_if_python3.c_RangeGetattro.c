
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ end; scalar_t__ start; } ;
typedef TYPE_1__ RangeObject ;
typedef int PyObject ;


 int GET_ATTR_STRING (int ,int *) ;
 int * PyObject_GenericGetAttr (int *,int *) ;
 int * Py_BuildValue (char*,scalar_t__) ;
 int name ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static PyObject *
RangeGetattro(PyObject *self, PyObject *nameobj)
{
    GET_ATTR_STRING(name, nameobj);

    if (strcmp(name, "start") == 0)
 return Py_BuildValue("n", ((RangeObject *)(self))->start - 1);
    else if (strcmp(name, "end") == 0)
 return Py_BuildValue("n", ((RangeObject *)(self))->end - 1);
    else
 return PyObject_GenericGetAttr(self, nameobj);
}
