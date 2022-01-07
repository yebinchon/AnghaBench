
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dict ;


 int DICT_ERR ;
 int DICT_OK ;
 scalar_t__ dictGenericDelete (int *,void const*,int ) ;

int dictDelete(dict *ht, const void *key) {
    return dictGenericDelete(ht,key,0) ? DICT_OK : DICT_ERR;
}
