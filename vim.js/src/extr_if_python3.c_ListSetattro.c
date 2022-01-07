
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int ListObject ;


 int GET_ATTR_STRING (int ,int *) ;
 int ListSetattr (int *,int ,int *) ;
 int name ;

__attribute__((used)) static int
ListSetattro(PyObject *self, PyObject *nameobj, PyObject *val)
{
    GET_ATTR_STRING(name, nameobj);
    return ListSetattr((ListObject *)(self), name, val);
}
