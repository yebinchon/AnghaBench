
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int DictionaryObject ;


 int * _DictionaryItem (int *,int *,int ) ;

__attribute__((used)) static PyObject *
DictionaryItem(DictionaryObject *self, PyObject *keyObject)
{
    return _DictionaryItem(self, keyObject, 0);
}
