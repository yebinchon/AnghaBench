
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ current; int quicklist; } ;
typedef TYPE_1__ quicklistIter ;


 int quicklistCompress (int ,scalar_t__) ;
 int zfree (TYPE_1__*) ;

void quicklistReleaseIterator(quicklistIter *iter) {
    if (iter->current)
        quicklistCompress(iter->quicklist, iter->current);

    zfree(iter);
}
