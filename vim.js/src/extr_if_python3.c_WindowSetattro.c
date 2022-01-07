
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WindowObject ;
typedef int PyObject ;


 int GET_ATTR_STRING (int ,int *) ;
 int WindowSetattr (int *,int ,int *) ;
 int name ;

__attribute__((used)) static int
WindowSetattro(PyObject *self, PyObject *nameobj, PyObject *val)
{
    GET_ATTR_STRING(name, nameobj);

    return WindowSetattr((WindowObject *)(self), name, val);
}
