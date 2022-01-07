
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; int key; } ;
typedef TYPE_1__ dictEntry ;
struct TYPE_8__ {unsigned int sizemask; TYPE_1__** table; } ;
typedef TYPE_2__ dict ;


 scalar_t__ DICT_ERR ;
 scalar_t__ _dictExpandIfNeeded (TYPE_2__*) ;
 scalar_t__ dictCompareHashKeys (TYPE_2__*,void const*,int ) ;
 unsigned int dictHashKey (TYPE_2__*,void const*) ;

__attribute__((used)) static int _dictKeyIndex(dict *ht, const void *key) {
    unsigned int h;
    dictEntry *he;


    if (_dictExpandIfNeeded(ht) == DICT_ERR)
        return -1;

    h = dictHashKey(ht, key) & ht->sizemask;

    he = ht->table[h];
    while(he) {
        if (dictCompareHashKeys(ht, key, he->key))
            return -1;
        he = he->next;
    }
    return h;
}
