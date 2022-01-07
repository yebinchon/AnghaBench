
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_11__ {void const* key; struct TYPE_11__* next; } ;
typedef TYPE_2__ dictEntry ;
struct TYPE_12__ {TYPE_1__* ht; } ;
typedef TYPE_3__ dict ;
struct TYPE_10__ {scalar_t__ used; int sizemask; TYPE_2__** table; } ;


 int _dictRehashStep (TYPE_3__*) ;
 scalar_t__ dictCompareKeys (TYPE_3__*,void const*,void const*) ;
 int dictHashKey (TYPE_3__*,void const*) ;
 scalar_t__ dictIsRehashing (TYPE_3__*) ;

dictEntry *dictFind(dict *d, const void *key)
{
    dictEntry *he;
    uint64_t h, idx, table;

    if (d->ht[0].used + d->ht[1].used == 0) return ((void*)0);
    if (dictIsRehashing(d)) _dictRehashStep(d);
    h = dictHashKey(d, key);
    for (table = 0; table <= 1; table++) {
        idx = h & d->ht[table].sizemask;
        he = d->ht[table].table[idx];
        while(he) {
            if (key==he->key || dictCompareKeys(d, key, he->key))
                return he;
            he = he->next;
        }
        if (!dictIsRehashing(d)) return ((void*)0);
    }
    return ((void*)0);
}
