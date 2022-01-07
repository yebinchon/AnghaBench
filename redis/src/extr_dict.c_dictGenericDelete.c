
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_16__ {void const* key; struct TYPE_16__* next; } ;
typedef TYPE_2__ dictEntry ;
struct TYPE_17__ {TYPE_1__* ht; } ;
typedef TYPE_3__ dict ;
struct TYPE_15__ {scalar_t__ used; size_t sizemask; TYPE_2__** table; } ;


 int _dictRehashStep (TYPE_3__*) ;
 scalar_t__ dictCompareKeys (TYPE_3__*,void const*,void const*) ;
 int dictFreeKey (TYPE_3__*,TYPE_2__*) ;
 int dictFreeVal (TYPE_3__*,TYPE_2__*) ;
 size_t dictHashKey (TYPE_3__*,void const*) ;
 scalar_t__ dictIsRehashing (TYPE_3__*) ;
 int zfree (TYPE_2__*) ;

__attribute__((used)) static dictEntry *dictGenericDelete(dict *d, const void *key, int nofree) {
    uint64_t h, idx;
    dictEntry *he, *prevHe;
    int table;

    if (d->ht[0].used == 0 && d->ht[1].used == 0) return ((void*)0);

    if (dictIsRehashing(d)) _dictRehashStep(d);
    h = dictHashKey(d, key);

    for (table = 0; table <= 1; table++) {
        idx = h & d->ht[table].sizemask;
        he = d->ht[table].table[idx];
        prevHe = ((void*)0);
        while(he) {
            if (key==he->key || dictCompareKeys(d, key, he->key)) {

                if (prevHe)
                    prevHe->next = he->next;
                else
                    d->ht[table].table[idx] = he->next;
                if (!nofree) {
                    dictFreeKey(d, he);
                    dictFreeVal(d, he);
                    zfree(he);
                }
                d->ht[table].used--;
                return he;
            }
            prevHe = he;
            he = he->next;
        }
        if (!dictIsRehashing(d)) break;
    }
    return ((void*)0);
}
