
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int CurrentSetattr (int *,int ,int *) ;
 int GET_ATTR_STRING (int ,int *) ;
 int name ;

__attribute__((used)) static int
CurrentSetattro(PyObject *self, PyObject *nameobj, PyObject *value)
{
    GET_ATTR_STRING(name, nameobj);
    return CurrentSetattr(self, name, value);
}
