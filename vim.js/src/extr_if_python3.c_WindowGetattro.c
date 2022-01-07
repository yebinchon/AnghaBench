
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WindowObject ;
typedef int PyObject ;


 scalar_t__ CheckWindow (int *) ;
 int GET_ATTR_STRING (int ,int *) ;
 scalar_t__ PyErr_Occurred () ;
 int * PyObject_GenericGetAttr (int *,int *) ;
 int * WindowAttr (int *,int ) ;
 int * WindowAttrValid (int *,int ) ;
 int name ;

__attribute__((used)) static PyObject *
WindowGetattro(PyObject *self, PyObject *nameobj)
{
    PyObject *r;

    GET_ATTR_STRING(name, nameobj);

    if ((r = WindowAttrValid((WindowObject *)(self), name)))
 return r;

    if (CheckWindow((WindowObject *)(self)))
 return ((void*)0);

    r = WindowAttr((WindowObject *)(self), name);
    if (r || PyErr_Occurred())
 return r;
    else
 return PyObject_GenericGetAttr(self, nameobj);
}
