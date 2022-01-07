
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int robj ;
typedef int rio ;
typedef int hashTypeIterator ;


 long long AOF_REWRITE_ITEMS_PER_CMD ;
 scalar_t__ C_ERR ;
 int OBJ_HASH_KEY ;
 int OBJ_HASH_VALUE ;
 int * hashTypeInitIterator (int *) ;
 long long hashTypeLength (int *) ;
 scalar_t__ hashTypeNext (int *) ;
 int hashTypeReleaseIterator (int *) ;
 scalar_t__ rioWriteBulkCount (int *,char,int) ;
 scalar_t__ rioWriteBulkObject (int *,int *) ;
 scalar_t__ rioWriteBulkString (int *,char*,int) ;
 scalar_t__ rioWriteHashIteratorCursor (int *,int *,int ) ;

int rewriteHashObject(rio *r, robj *key, robj *o) {
    hashTypeIterator *hi;
    long long count = 0, items = hashTypeLength(o);

    hi = hashTypeInitIterator(o);
    while (hashTypeNext(hi) != C_ERR) {
        if (count == 0) {
            int cmd_items = (items > AOF_REWRITE_ITEMS_PER_CMD) ?
                AOF_REWRITE_ITEMS_PER_CMD : items;

            if (rioWriteBulkCount(r,'*',2+cmd_items*2) == 0) return 0;
            if (rioWriteBulkString(r,"HMSET",5) == 0) return 0;
            if (rioWriteBulkObject(r,key) == 0) return 0;
        }

        if (rioWriteHashIteratorCursor(r, hi, OBJ_HASH_KEY) == 0) return 0;
        if (rioWriteHashIteratorCursor(r, hi, OBJ_HASH_VALUE) == 0) return 0;
        if (++count == AOF_REWRITE_ITEMS_PER_CMD) count = 0;
        items--;
    }

    hashTypeReleaseIterator(hi);

    return 1;
}
