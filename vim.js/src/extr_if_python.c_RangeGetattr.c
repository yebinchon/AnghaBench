
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ end; scalar_t__ start; } ;
typedef TYPE_1__ RangeObject ;
typedef int PyObject ;


 int * ObjectDir (int *,int ) ;
 int * Py_BuildValue (int ,scalar_t__) ;
 int * Py_FindMethod (int ,int *,char*) ;
 int Py_ssize_t_fmt ;
 int RangeAttrs ;
 int RangeMethods ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static PyObject *
RangeGetattr(PyObject *self, char *name)
{
    if (strcmp(name, "start") == 0)
 return Py_BuildValue(Py_ssize_t_fmt, ((RangeObject *)(self))->start - 1);
    else if (strcmp(name, "end") == 0)
 return Py_BuildValue(Py_ssize_t_fmt, ((RangeObject *)(self))->end - 1);
    else if (strcmp(name, "__members__") == 0)
 return ObjectDir(((void*)0), RangeAttrs);
    else
 return Py_FindMethod(RangeMethods, self, name);
}
