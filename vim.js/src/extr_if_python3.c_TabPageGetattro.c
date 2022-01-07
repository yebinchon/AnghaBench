
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TabPageObject ;
typedef int PyObject ;


 scalar_t__ CheckTabPage (int *) ;
 int GET_ATTR_STRING (int ,int *) ;
 scalar_t__ PyErr_Occurred () ;
 int * PyObject_GenericGetAttr (int *,int *) ;
 int * TabPageAttr (int *,int ) ;
 int * TabPageAttrValid (int *,int ) ;
 int name ;

__attribute__((used)) static PyObject *
TabPageGetattro(PyObject *self, PyObject *nameobj)
{
    PyObject *r;

    GET_ATTR_STRING(name, nameobj);

    if ((r = TabPageAttrValid((TabPageObject *)(self), name)))
 return r;

    if (CheckTabPage((TabPageObject *)(self)))
 return ((void*)0);

    r = TabPageAttr((TabPageObject *)(self), name);
    if (r || PyErr_Occurred())
 return r;
    else
 return PyObject_GenericGetAttr(self, nameobj);
}
