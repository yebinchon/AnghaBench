
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int DictionaryObject ;


 int DictionarySetattr (int *,int ,int *) ;
 int GET_ATTR_STRING (int ,int *) ;
 int name ;

__attribute__((used)) static int
DictionarySetattro(PyObject *self, PyObject *nameobj, PyObject *val)
{
    GET_ATTR_STRING(name, nameobj);
    return DictionarySetattr((DictionaryObject *)(self), name, val);
}
