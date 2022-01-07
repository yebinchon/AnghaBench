
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dictType ;
struct TYPE_4__ {void* privdata; int * type; } ;
typedef TYPE_1__ dict ;


 int DICT_OK ;
 int _dictReset (TYPE_1__*) ;

__attribute__((used)) static int _dictInit(dict *ht, dictType *type, void *privDataPtr) {
    _dictReset(ht);
    ht->type = type;
    ht->privdata = privDataPtr;
    return DICT_OK;
}
