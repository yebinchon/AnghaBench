
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ char_u ;
struct TYPE_3__ {int from; int opt_type; scalar_t__ (* Check ) (int ) ;} ;
typedef int PyObject ;
typedef TYPE_1__ OptionsObject ;


 scalar_t__ NUL ;
 int N_ (char*) ;
 int * PyBytes_FromString (char*) ;
 int PyErr_SET_STRING (int ,int ) ;
 int PyErr_SET_VIM (int ) ;
 int PyErr_SetObject (int ,int *) ;
 int PyExc_KeyError ;
 int PyExc_RuntimeError ;
 int * PyInt_FromLong (long) ;
 int * Py_False ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 int * Py_True ;
 int Py_XDECREF (int *) ;
 int RAISE_NO_EMPTY_KEYS ;
 int SOPT_BOOL ;
 int SOPT_NUM ;
 int SOPT_STRING ;
 int SOPT_UNSET ;
 scalar_t__* StringToChars (int *,int **) ;
 int get_option_value_strict (scalar_t__*,long*,scalar_t__**,int ,int ) ;
 scalar_t__ stub1 (int ) ;
 int vim_free (scalar_t__*) ;

__attribute__((used)) static PyObject *
OptionsItem(OptionsObject *self, PyObject *keyObject)
{
    char_u *key;
    int flags;
    long numval;
    char_u *stringval;
    PyObject *todecref;

    if (self->Check(self->from))
 return ((void*)0);

    if (!(key = StringToChars(keyObject, &todecref)))
 return ((void*)0);

    if (*key == NUL)
    {
 RAISE_NO_EMPTY_KEYS;
 Py_XDECREF(todecref);
 return ((void*)0);
    }

    flags = get_option_value_strict(key, &numval, &stringval,
        self->opt_type, self->from);

    Py_XDECREF(todecref);

    if (flags == 0)
    {
 PyErr_SetObject(PyExc_KeyError, keyObject);
 return ((void*)0);
    }

    if (flags & SOPT_UNSET)
    {
 Py_INCREF(Py_None);
 return Py_None;
    }
    else if (flags & SOPT_BOOL)
    {
 PyObject *ret;
 ret = numval ? Py_True : Py_False;
 Py_INCREF(ret);
 return ret;
    }
    else if (flags & SOPT_NUM)
 return PyInt_FromLong(numval);
    else if (flags & SOPT_STRING)
    {
 if (stringval)
 {
     PyObject *ret = PyBytes_FromString((char *)stringval);
     vim_free(stringval);
     return ret;
 }
 else
 {
     PyErr_SET_STRING(PyExc_RuntimeError,
      N_("unable to get option value"));
     return ((void*)0);
 }
    }
    else
    {
 PyErr_SET_VIM(N_("internal error: unknown option type"));
 return ((void*)0);
    }
}
