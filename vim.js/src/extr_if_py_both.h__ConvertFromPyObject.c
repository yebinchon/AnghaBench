
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_8__ ;
typedef struct TYPE_44__ TYPE_7__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_1__ ;


typedef void* varnumber_T ;
struct TYPE_40__ {void* v_number; scalar_t__ v_float; int v_string; TYPE_2__* v_list; TYPE_1__* v_dict; } ;
struct TYPE_41__ {TYPE_3__ vval; void* v_type; } ;
typedef TYPE_4__ typval_T ;
typedef scalar_t__ float_T ;
typedef int char_u ;
struct TYPE_45__ {TYPE_1__* dict; } ;
struct TYPE_44__ {int * name; } ;
struct TYPE_43__ {TYPE_2__* list; } ;
struct TYPE_42__ {int ob_type; } ;
struct TYPE_39__ {int lv_refcount; } ;
struct TYPE_38__ {int dv_refcount; } ;
typedef TYPE_5__ PyObject ;
typedef TYPE_6__ ListObject ;
typedef TYPE_7__ FunctionObject ;
typedef TYPE_8__ DictionaryObject ;


 int DictionaryType ;
 int ENC_OPT ;
 int FunctionType ;
 int ListType ;
 int N_ (char*) ;
 int PyBytes_AsStringAndSize (TYPE_5__*,char**,int *) ;
 scalar_t__ PyBytes_Check (TYPE_5__*) ;
 scalar_t__ PyDict_Check (TYPE_5__*) ;
 int PyErr_FORMAT (int ,int ,int ) ;
 scalar_t__ PyErr_Occurred () ;
 int PyExc_TypeError ;
 scalar_t__ PyFloat_AsDouble (TYPE_5__*) ;
 scalar_t__ PyFloat_Check (TYPE_5__*) ;
 scalar_t__ PyInt_AsLong (TYPE_5__*) ;
 scalar_t__ PyInt_Check (TYPE_5__*) ;
 scalar_t__ PyIter_Check (TYPE_5__*) ;
 scalar_t__ PyLong_AsLong (TYPE_5__*) ;
 scalar_t__ PyLong_Check (TYPE_5__*) ;
 scalar_t__ PyMapping_Check (TYPE_5__*) ;
 scalar_t__ PyNumber_Check (TYPE_5__*) ;
 TYPE_5__* PyNumber_Long (TYPE_5__*) ;
 scalar_t__ PyObject_HasAttrString (TYPE_5__*,char*) ;
 scalar_t__ PySequence_Check (TYPE_5__*) ;
 scalar_t__ PyType_IsSubtype (int ,int *) ;
 TYPE_5__* PyUnicode_AsEncodedString (TYPE_5__*,int ,int *) ;
 scalar_t__ PyUnicode_Check (TYPE_5__*) ;
 int Py_DECREF (TYPE_5__*) ;
 int Py_TYPE_NAME (TYPE_5__*) ;
 int Py_XDECREF (TYPE_5__*) ;
 void* VAR_DICT ;
 void* VAR_FLOAT ;
 void* VAR_FUNC ;
 void* VAR_LIST ;
 void* VAR_NUMBER ;
 void* VAR_STRING ;
 int convert_dl (TYPE_5__*,TYPE_4__*,int ,TYPE_5__*) ;
 int func_ref (int ) ;
 int pydict_to_tv ;
 int pymap_to_tv ;
 int pyseq_to_tv ;
 int set_string_copy (int *,TYPE_4__*) ;

__attribute__((used)) static int
_ConvertFromPyObject(PyObject *obj, typval_T *tv, PyObject *lookup_dict)
{
    if (PyType_IsSubtype(obj->ob_type, &DictionaryType))
    {
 tv->v_type = VAR_DICT;
 tv->vval.v_dict = (((DictionaryObject *)(obj))->dict);
 ++tv->vval.v_dict->dv_refcount;
    }
    else if (PyType_IsSubtype(obj->ob_type, &ListType))
    {
 tv->v_type = VAR_LIST;
 tv->vval.v_list = (((ListObject *)(obj))->list);
 ++tv->vval.v_list->lv_refcount;
    }
    else if (PyType_IsSubtype(obj->ob_type, &FunctionType))
    {
 if (set_string_copy(((FunctionObject *) (obj))->name, tv) == -1)
     return -1;

 tv->v_type = VAR_FUNC;
 func_ref(tv->vval.v_string);
    }
    else if (PyBytes_Check(obj))
    {
 char_u *str;

 if (PyBytes_AsStringAndSize(obj, (char **) &str, ((void*)0)) == -1)
     return -1;
 if (str == ((void*)0))
     return -1;

 if (set_string_copy(str, tv) == -1)
     return -1;

 tv->v_type = VAR_STRING;
    }
    else if (PyUnicode_Check(obj))
    {
 PyObject *bytes;
 char_u *str;

 bytes = PyUnicode_AsEncodedString(obj, ENC_OPT, ((void*)0));
 if (bytes == ((void*)0))
     return -1;

 if(PyBytes_AsStringAndSize(bytes, (char **) &str, ((void*)0)) == -1)
     return -1;
 if (str == ((void*)0))
     return -1;

 if (set_string_copy(str, tv))
 {
     Py_XDECREF(bytes);
     return -1;
 }
 Py_XDECREF(bytes);

 tv->v_type = VAR_STRING;
    }

    else if (PyInt_Check(obj))
    {
 tv->v_type = VAR_NUMBER;
 tv->vval.v_number = (varnumber_T) PyInt_AsLong(obj);
 if (PyErr_Occurred())
     return -1;
    }

    else if (PyLong_Check(obj))
    {
 tv->v_type = VAR_NUMBER;
 tv->vval.v_number = (varnumber_T) PyLong_AsLong(obj);
 if (PyErr_Occurred())
     return -1;
    }
    else if (PyDict_Check(obj))
 return convert_dl(obj, tv, pydict_to_tv, lookup_dict);







    else if (PyObject_HasAttrString(obj, "keys"))
 return convert_dl(obj, tv, pymap_to_tv, lookup_dict);

    else if (PyIter_Check(obj) || PySequence_Check(obj))
 return convert_dl(obj, tv, pyseq_to_tv, lookup_dict);
    else if (PyMapping_Check(obj))
 return convert_dl(obj, tv, pymap_to_tv, lookup_dict);
    else if (PyNumber_Check(obj))
    {
 PyObject *num;

 if (!(num = PyNumber_Long(obj)))
     return -1;

 tv->v_type = VAR_NUMBER;
 tv->vval.v_number = (varnumber_T) PyLong_AsLong(num);

 Py_DECREF(num);
    }
    else
    {
 PyErr_FORMAT(PyExc_TypeError,
  N_("unable to convert %s to vim structure"),
  Py_TYPE_NAME(obj));
 return -1;
    }
    return 0;
}
