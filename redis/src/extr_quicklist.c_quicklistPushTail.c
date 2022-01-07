
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int count; void* zl; } ;
typedef TYPE_1__ quicklistNode ;
struct TYPE_11__ {TYPE_1__* tail; int count; int fill; } ;
typedef TYPE_2__ quicklist ;


 int ZIPLIST_TAIL ;
 int _quicklistInsertNodeAfter (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int _quicklistNodeAllowInsert (TYPE_1__*,int ,size_t) ;
 scalar_t__ likely (int ) ;
 TYPE_1__* quicklistCreateNode () ;
 int quicklistNodeUpdateSz (TYPE_1__*) ;
 void* ziplistNew () ;
 void* ziplistPush (void*,void*,size_t,int ) ;

int quicklistPushTail(quicklist *quicklist, void *value, size_t sz) {
    quicklistNode *orig_tail = quicklist->tail;
    if (likely(
            _quicklistNodeAllowInsert(quicklist->tail, quicklist->fill, sz))) {
        quicklist->tail->zl =
            ziplistPush(quicklist->tail->zl, value, sz, ZIPLIST_TAIL);
        quicklistNodeUpdateSz(quicklist->tail);
    } else {
        quicklistNode *node = quicklistCreateNode();
        node->zl = ziplistPush(ziplistNew(), value, sz, ZIPLIST_TAIL);

        quicklistNodeUpdateSz(node);
        _quicklistInsertNodeAfter(quicklist, quicklist->tail, node);
    }
    quicklist->count++;
    quicklist->tail->count++;
    return (orig_tail != quicklist->tail);
}
