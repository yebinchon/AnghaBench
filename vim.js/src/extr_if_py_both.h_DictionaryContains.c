
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int DictionaryObject ;


 int DICT_FLAG_RETURN_BOOL ;
 int Py_DECREF (int *) ;
 int * Py_True ;
 int * _DictionaryItem (int *,int *,int ) ;

__attribute__((used)) static int
DictionaryContains(DictionaryObject *self, PyObject *keyObject)
{
    PyObject *rObj = _DictionaryItem(self, keyObject, DICT_FLAG_RETURN_BOOL);
    int ret;

    if (rObj == ((void*)0))
 return -1;

    ret = (rObj == Py_True);

    Py_DECREF(rObj);

    return ret;
}
