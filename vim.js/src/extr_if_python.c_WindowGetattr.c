
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WindowObject ;
typedef int PyObject ;


 scalar_t__ CheckWindow (int *) ;
 scalar_t__ PyErr_Occurred () ;
 int * Py_FindMethod (int ,int *,char*) ;
 int * WindowAttr (int *,char*) ;
 int * WindowAttrValid (int *,char*) ;
 int WindowMethods ;

__attribute__((used)) static PyObject *
WindowGetattr(PyObject *self, char *name)
{
    PyObject *r;

    if ((r = WindowAttrValid((WindowObject *)(self), name)))
 return r;

    if (CheckWindow((WindowObject *)(self)))
 return ((void*)0);

    r = WindowAttr((WindowObject *)(self), name);
    if (r || PyErr_Occurred())
 return r;
    else
 return Py_FindMethod(WindowMethods, self, name);
}
