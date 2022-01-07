
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int PyTypeObject ;
typedef int PyObject ;


 int * FunctionNew (int *,int *) ;
 int N_ (char*) ;
 int PyArg_ParseTuple (int *,char*,char*,int **) ;
 int PyErr_SET_STRING (int ,int ) ;
 int PyExc_TypeError ;
 int PyMem_Free (int *) ;

__attribute__((used)) static PyObject *
FunctionConstructor(PyTypeObject *subtype, PyObject *args, PyObject *kwargs)
{
    PyObject *self;
    char_u *name;

    if (kwargs)
    {
 PyErr_SET_STRING(PyExc_TypeError,
  N_("function constructor does not accept keyword arguments"));
 return ((void*)0);
    }

    if (!PyArg_ParseTuple(args, "et", "ascii", &name))
 return ((void*)0);

    self = FunctionNew(subtype, name);

    PyMem_Free(name);

    return self;
}
