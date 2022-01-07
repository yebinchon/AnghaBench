
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int DictionaryObject ;


 int DICT_FLAG_HAS_DEFAULT ;
 int DICT_FLAG_POP ;
 int * _DictionaryItem (int *,int *,int) ;

__attribute__((used)) static PyObject *
DictionaryPop(DictionaryObject *self, PyObject *args)
{
    return _DictionaryItem(self, args, DICT_FLAG_HAS_DEFAULT|DICT_FLAG_POP);
}
