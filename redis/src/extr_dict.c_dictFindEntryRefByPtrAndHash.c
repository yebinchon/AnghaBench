
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned long uint64_t ;
struct TYPE_8__ {void const* key; struct TYPE_8__* next; } ;
typedef TYPE_2__ dictEntry ;
struct TYPE_9__ {TYPE_1__* ht; } ;
typedef TYPE_3__ dict ;
struct TYPE_7__ {scalar_t__ used; unsigned long sizemask; TYPE_2__** table; } ;


 int dictIsRehashing (TYPE_3__*) ;

dictEntry **dictFindEntryRefByPtrAndHash(dict *d, const void *oldptr, uint64_t hash) {
    dictEntry *he, **heref;
    unsigned long idx, table;

    if (d->ht[0].used + d->ht[1].used == 0) return ((void*)0);
    for (table = 0; table <= 1; table++) {
        idx = hash & d->ht[table].sizemask;
        heref = &d->ht[table].table[idx];
        he = *heref;
        while(he) {
            if (oldptr==he->key)
                return heref;
            heref = &he->next;
            he = *heref;
        }
        if (!dictIsRehashing(d)) return ((void*)0);
    }
    return ((void*)0);
}
