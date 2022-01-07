
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int N_ (char*) ;
 int PyErr_FORMAT (int ,int ,int) ;
 int PyErr_SET_STRING (int ,int ) ;
 int PyExc_RuntimeError ;
 int PyExc_TypeError ;
 int * PyObject_CallFunction (int ,char*,char*,int,int *,int *,int *) ;
 int PyTuple_Check (int *) ;
 int * PyTuple_GET_ITEM (int *,int) ;
 int PyTuple_GET_SIZE (int *) ;
 int Py_TYPE_NAME (int *) ;
 int py_load_module ;

__attribute__((used)) static PyObject *
call_load_module(char *name, int len, PyObject *find_module_result)
{
    PyObject *fd, *pathname, *description;

    if (!PyTuple_Check(find_module_result))
    {
 PyErr_FORMAT(PyExc_TypeError,
  N_("expected 3-tuple as imp.find_module() result, but got %s"),
  Py_TYPE_NAME(find_module_result));
 return ((void*)0);
    }
    if (PyTuple_GET_SIZE(find_module_result) != 3)
    {
 PyErr_FORMAT(PyExc_TypeError,
  N_("expected 3-tuple as imp.find_module() result, but got "
     "tuple of size %d"),
  (int) PyTuple_GET_SIZE(find_module_result));
 return ((void*)0);
    }

    if (!(fd = PyTuple_GET_ITEM(find_module_result, 0))
     || !(pathname = PyTuple_GET_ITEM(find_module_result, 1))
     || !(description = PyTuple_GET_ITEM(find_module_result, 2)))
    {
 PyErr_SET_STRING(PyExc_RuntimeError,
  N_("internal error: imp.find_module returned tuple with NULL"));
 return ((void*)0);
    }

    return PyObject_CallFunction(py_load_module,
     "s#OOO", name, len, fd, pathname, description);
}
