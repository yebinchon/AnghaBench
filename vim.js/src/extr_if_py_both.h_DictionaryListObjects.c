
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ long_u ;
typedef int * (* hi_to_py ) (int *) ;
typedef int hashitem_T ;
struct TYPE_5__ {scalar_t__ ht_used; int * ht_array; } ;
struct TYPE_6__ {TYPE_1__ dv_hashtab; } ;
typedef TYPE_2__ dict_T ;
struct TYPE_7__ {TYPE_2__* dict; } ;
typedef scalar_t__ Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_3__ DictionaryObject ;


 int HASHITEM_EMPTY (int *) ;
 int * PyList_New (scalar_t__) ;
 int PyList_SET_ITEM (int *,scalar_t__,int *) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static PyObject *
DictionaryListObjects(DictionaryObject *self, hi_to_py hiconvert)
{
    dict_T *dict = self->dict;
    long_u todo = dict->dv_hashtab.ht_used;
    Py_ssize_t i = 0;
    PyObject *ret;
    hashitem_T *hi;
    PyObject *newObj;

    ret = PyList_New(todo);
    for (hi = dict->dv_hashtab.ht_array; todo > 0; ++hi)
    {
 if (!HASHITEM_EMPTY(hi))
 {
     if (!(newObj = hiconvert(hi)))
     {
  Py_DECREF(ret);
  return ((void*)0);
     }
     PyList_SET_ITEM(ret, i, newObj);
     --todo;
     ++i;
 }
    }
    return ret;
}
