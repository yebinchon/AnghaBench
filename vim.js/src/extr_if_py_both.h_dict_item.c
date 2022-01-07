
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashitem_T ;
typedef int PyObject ;


 int * Py_BuildValue (char*,int *,int *) ;
 int Py_DECREF (int *) ;
 int * dict_key (int *) ;
 int * dict_val (int *) ;

__attribute__((used)) static PyObject *
dict_item(hashitem_T *hi)
{
    PyObject *keyObject;
    PyObject *valObject;
    PyObject *ret;

    if (!(keyObject = dict_key(hi)))
 return ((void*)0);

    if (!(valObject = dict_val(hi)))
    {
 Py_DECREF(keyObject);
 return ((void*)0);
    }

    ret = Py_BuildValue("(OO)", keyObject, valObject);

    Py_DECREF(keyObject);
    Py_DECREF(valObject);

    return ret;
}
