
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ name; } ;
typedef int PyObject ;
typedef TYPE_1__ FunctionObject ;


 int GET_ATTR_STRING (int ,int *) ;
 int * PyObject_GenericGetAttr (int *,int *) ;
 int * PyUnicode_FromString (char*) ;
 int name ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static PyObject *
FunctionGetattro(PyObject *self, PyObject *nameobj)
{
    FunctionObject *this = (FunctionObject *)(self);

    GET_ATTR_STRING(name, nameobj);

    if (strcmp(name, "name") == 0)
 return PyUnicode_FromString((char *)(this->name));

    return PyObject_GenericGetAttr(self, nameobj);
}
