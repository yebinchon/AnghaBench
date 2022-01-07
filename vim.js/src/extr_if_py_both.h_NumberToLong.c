
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 long INT_MAX ;
 long INT_MIN ;
 int NUMBER_INT ;
 int NUMBER_NATURAL ;
 int NUMBER_UNSIGNED ;
 int N_ (char*) ;
 int PyErr_FORMAT (int ,int ,int ) ;
 scalar_t__ PyErr_Occurred () ;
 int PyErr_SET_STRING (int ,int ) ;
 int PyExc_OverflowError ;
 int PyExc_TypeError ;
 int PyExc_ValueError ;
 long PyInt_AsLong (int *) ;
 scalar_t__ PyInt_Check (int *) ;
 long PyLong_AsLong (int *) ;
 scalar_t__ PyLong_Check (int *) ;
 scalar_t__ PyNumber_Check (int *) ;
 int * PyNumber_Long (int *) ;
 int Py_DECREF (int *) ;
 int Py_TYPE_NAME (int *) ;

__attribute__((used)) static int
NumberToLong(PyObject *obj, long *result, int flags)
{

    if (PyInt_Check(obj))
    {
 *result = PyInt_AsLong(obj);
 if (PyErr_Occurred())
     return -1;
    }
    else

    if (PyLong_Check(obj))
    {
 *result = PyLong_AsLong(obj);
 if (PyErr_Occurred())
     return -1;
    }
    else if (PyNumber_Check(obj))
    {
 PyObject *num;

 if (!(num = PyNumber_Long(obj)))
     return -1;

 *result = PyLong_AsLong(num);

 Py_DECREF(num);

 if (PyErr_Occurred())
     return -1;
    }
    else
    {

 PyErr_FORMAT(PyExc_TypeError,
  N_("expected int(), long() or something supporting "
     "coercing to long(), but got %s"),
  Py_TYPE_NAME(obj));






 return -1;
    }

    if (flags & NUMBER_INT)
    {
 if (*result > INT_MAX)
 {
     PyErr_SET_STRING(PyExc_OverflowError,
      N_("value is too large to fit into C int type"));
     return -1;
 }
 else if (*result < INT_MIN)
 {
     PyErr_SET_STRING(PyExc_OverflowError,
      N_("value is too small to fit into C int type"));
     return -1;
 }
    }

    if (flags & NUMBER_NATURAL)
    {
 if (*result <= 0)
 {
     PyErr_SET_STRING(PyExc_ValueError,
      N_("number must be greater then zero"));
     return -1;
 }
    }
    else if (flags & NUMBER_UNSIGNED)
    {
 if (*result < 0)
 {
     PyErr_SET_STRING(PyExc_ValueError,
      N_("number must be greater or equal to zero"));
     return -1;
 }
    }

    return 0;
}
