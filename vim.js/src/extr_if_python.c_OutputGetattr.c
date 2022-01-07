
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int softspace; } ;
typedef int PyObject ;
typedef TYPE_1__ OutputObject ;


 int * ObjectDir (int *,int ) ;
 int OutputAttrs ;
 int OutputMethods ;
 int * PyInt_FromLong (int ) ;
 int * Py_FindMethod (int ,int *,char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static PyObject *
OutputGetattr(PyObject *self, char *name)
{
    if (strcmp(name, "softspace") == 0)
 return PyInt_FromLong(((OutputObject *)(self))->softspace);
    else if (strcmp(name, "__members__") == 0)
 return ObjectDir(((void*)0), OutputAttrs);

    return Py_FindMethod(OutputMethods, self, name);
}
