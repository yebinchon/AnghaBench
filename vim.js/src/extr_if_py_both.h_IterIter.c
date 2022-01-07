
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int Py_INCREF (int *) ;

__attribute__((used)) static PyObject *
IterIter(PyObject *self)
{
    Py_INCREF(self);
    return self;
}
