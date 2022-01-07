
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int * ml_name; } ;
struct TYPE_10__ {TYPE_1__* ob_type; } ;
struct TYPE_9__ {TYPE_3__* tp_methods; } ;
typedef TYPE_2__ PyObject ;
typedef TYPE_3__ PyMethodDef ;


 TYPE_2__* PyList_New (int ) ;
 int Py_DECREF (TYPE_2__*) ;
 scalar_t__ add_string (TYPE_2__*,char*) ;

__attribute__((used)) static PyObject *
ObjectDir(PyObject *self, char **attributes)
{
    PyMethodDef *method;
    char **attr;
    PyObject *ret;

    if (!(ret = PyList_New(0)))
 return ((void*)0);

    if (self)
 for (method = self->ob_type->tp_methods ; method->ml_name != ((void*)0) ; ++method)
     if (add_string(ret, (char *)method->ml_name))
     {
  Py_DECREF(ret);
  return ((void*)0);
     }

    for (attr = attributes ; *attr ; ++attr)
 if (add_string(ret, *attr))
 {
     Py_DECREF(ret);
     return ((void*)0);
 }


    if (add_string(ret, "__members__"))
    {
 Py_DECREF(ret);
 return ((void*)0);
    }


    return ret;
}
