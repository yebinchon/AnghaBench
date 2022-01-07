
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* node; int zi; } ;
typedef TYPE_1__ quicklistEntry ;
typedef int quicklist ;
struct TYPE_6__ {int zl; } ;


 scalar_t__ likely (int ) ;
 int quicklistCompress (int *,TYPE_2__*) ;
 int quicklistIndex (int *,long,TYPE_1__*) ;
 int quicklistNodeUpdateSz (TYPE_2__*) ;
 int ziplistDelete (int ,int *) ;
 int ziplistInsert (int ,int ,void*,int) ;

int quicklistReplaceAtIndex(quicklist *quicklist, long index, void *data,
                            int sz) {
    quicklistEntry entry;
    if (likely(quicklistIndex(quicklist, index, &entry))) {

        entry.node->zl = ziplistDelete(entry.node->zl, &entry.zi);
        entry.node->zl = ziplistInsert(entry.node->zl, entry.zi, data, sz);
        quicklistNodeUpdateSz(entry.node);
        quicklistCompress(quicklist, entry.node);
        return 1;
    } else {
        return 0;
    }
}
