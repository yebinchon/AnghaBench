
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int OutputObject ;


 scalar_t__ PyErr_Occurred () ;
 int * PyIter_Next (int *) ;
 int * PyObject_GetIter (int *) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 scalar_t__ write_output (int *,int *) ;

__attribute__((used)) static PyObject *
OutputWritelines(OutputObject *self, PyObject *seq)
{
    PyObject *iterator;
    PyObject *item;

    if (!(iterator = PyObject_GetIter(seq)))
 return ((void*)0);

    while ((item = PyIter_Next(iterator)))
    {
 if (write_output(self, item))
 {
     Py_DECREF(iterator);
     Py_DECREF(item);
     return ((void*)0);
 }
 Py_DECREF(item);
    }

    Py_DECREF(iterator);


    if (PyErr_Occurred())
 return ((void*)0);

    Py_INCREF(Py_None);
    return Py_None;
}
