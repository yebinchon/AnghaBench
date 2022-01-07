
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int quicklist ;


 int QUICKLIST_HEAD ;
 int QUICKLIST_TAIL ;
 int quicklistPushHead (int *,void*,size_t const) ;
 int quicklistPushTail (int *,void*,size_t const) ;

void quicklistPush(quicklist *quicklist, void *value, const size_t sz,
                   int where) {
    if (where == QUICKLIST_HEAD) {
        quicklistPushHead(quicklist, value, sz);
    } else if (where == QUICKLIST_TAIL) {
        quicklistPushTail(quicklist, value, sz);
    }
}
