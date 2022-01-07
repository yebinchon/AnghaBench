
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int BufferObject ;


 int * BufferAttr (int *,char*) ;
 int * BufferAttrValid (int *,char*) ;
 int BufferMethods ;
 scalar_t__ CheckBuffer (int *) ;
 scalar_t__ PyErr_Occurred () ;
 int * Py_FindMethod (int ,int *,char*) ;

__attribute__((used)) static PyObject *
BufferGetattr(PyObject *self, char *name)
{
    PyObject *r;

    if ((r = BufferAttrValid((BufferObject *)(self), name)))
 return r;

    if (CheckBuffer((BufferObject *)(self)))
 return ((void*)0);

    r = BufferAttr((BufferObject *)(self), name);
    if (r || PyErr_Occurred())
 return r;
    else
 return Py_FindMethod(BufferMethods, self, name);
}
