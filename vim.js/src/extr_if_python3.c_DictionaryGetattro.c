
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dict; } ;
struct TYPE_3__ {int dv_scope; int dv_lock; } ;
typedef int PyObject ;
typedef TYPE_2__ DictionaryObject ;


 int GET_ATTR_STRING (int ,int *) ;
 int * PyLong_FromLong (int ) ;
 int * PyObject_GenericGetAttr (int *,int *) ;
 int name ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static PyObject *
DictionaryGetattro(PyObject *self, PyObject *nameobj)
{
    DictionaryObject *this = ((DictionaryObject *) (self));

    GET_ATTR_STRING(name, nameobj);

    if (strcmp(name, "locked") == 0)
 return PyLong_FromLong(this->dict->dv_lock);
    else if (strcmp(name, "scope") == 0)
 return PyLong_FromLong(this->dict->dv_scope);

    return PyObject_GenericGetAttr(self, nameobj);
}
