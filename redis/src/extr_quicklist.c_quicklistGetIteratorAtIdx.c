
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int offset; int current; int * zi; } ;
typedef TYPE_1__ quicklistIter ;
struct TYPE_7__ {int offset; int node; } ;
typedef TYPE_2__ quicklistEntry ;
typedef int quicklist ;


 TYPE_1__* quicklistGetIterator (int const*,int const) ;
 scalar_t__ quicklistIndex (int const*,long long const,TYPE_2__*) ;

quicklistIter *quicklistGetIteratorAtIdx(const quicklist *quicklist,
                                         const int direction,
                                         const long long idx) {
    quicklistEntry entry;

    if (quicklistIndex(quicklist, idx, &entry)) {
        quicklistIter *base = quicklistGetIterator(quicklist, direction);
        base->zi = ((void*)0);
        base->current = entry.node;
        base->offset = entry.offset;
        return base;
    } else {
        return ((void*)0);
    }
}
