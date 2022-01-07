
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {unsigned long long count; int zl; struct TYPE_9__* prev; struct TYPE_9__* next; } ;
typedef TYPE_1__ quicklistNode ;
struct TYPE_10__ {unsigned long long offset; int longval; int sz; int value; int zi; TYPE_1__* node; TYPE_3__ const* quicklist; } ;
typedef TYPE_2__ quicklistEntry ;
struct TYPE_11__ {unsigned long long count; TYPE_1__* head; TYPE_1__* tail; } ;
typedef TYPE_3__ quicklist ;


 int D (char*,void*,unsigned long long,unsigned long long,...) ;
 int initEntry (TYPE_2__*) ;
 scalar_t__ likely (TYPE_1__*) ;
 int quicklistDecompressNodeForUse (TYPE_1__*) ;
 int ziplistGet (int ,int *,int *,int *) ;
 int ziplistIndex (int ,unsigned long long) ;

int quicklistIndex(const quicklist *quicklist, const long long idx,
                   quicklistEntry *entry) {
    quicklistNode *n;
    unsigned long long accum = 0;
    unsigned long long index;
    int forward = idx < 0 ? 0 : 1;

    initEntry(entry);
    entry->quicklist = quicklist;

    if (!forward) {
        index = (-idx) - 1;
        n = quicklist->tail;
    } else {
        index = idx;
        n = quicklist->head;
    }

    if (index >= quicklist->count)
        return 0;

    while (likely(n)) {
        if ((accum + n->count) > index) {
            break;
        } else {
            D("Skipping over (%p) %u at accum %lld", (void *)n, n->count,
              accum);
            accum += n->count;
            n = forward ? n->next : n->prev;
        }
    }

    if (!n)
        return 0;

    D("Found node: %p at accum %llu, idx %llu, sub+ %llu, sub- %llu", (void *)n,
      accum, index, index - accum, (-index) - 1 + accum);

    entry->node = n;
    if (forward) {

        entry->offset = index - accum;
    } else {


        entry->offset = (-index) - 1 + accum;
    }

    quicklistDecompressNodeForUse(entry->node);
    entry->zi = ziplistIndex(entry->node->zl, entry->offset);
    ziplistGet(entry->zi, &entry->value, &entry->sz, &entry->longval);


    return 1;
}
