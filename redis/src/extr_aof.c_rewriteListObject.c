
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ encoding; int * ptr; } ;
typedef TYPE_1__ robj ;
typedef int rio ;
typedef int quicklistIter ;
struct TYPE_9__ {int sz; int longval; scalar_t__ value; } ;
typedef TYPE_2__ quicklistEntry ;
typedef int quicklist ;


 int AL_START_HEAD ;
 long long AOF_REWRITE_ITEMS_PER_CMD ;
 scalar_t__ OBJ_ENCODING_QUICKLIST ;
 long long listTypeLength (TYPE_1__*) ;
 int * quicklistGetIterator (int *,int ) ;
 scalar_t__ quicklistNext (int *,TYPE_2__*) ;
 int quicklistReleaseIterator (int *) ;
 scalar_t__ rioWriteBulkCount (int *,char,int) ;
 scalar_t__ rioWriteBulkLongLong (int *,int ) ;
 scalar_t__ rioWriteBulkObject (int *,TYPE_1__*) ;
 scalar_t__ rioWriteBulkString (int *,char*,int) ;
 int serverPanic (char*) ;

int rewriteListObject(rio *r, robj *key, robj *o) {
    long long count = 0, items = listTypeLength(o);

    if (o->encoding == OBJ_ENCODING_QUICKLIST) {
        quicklist *list = o->ptr;
        quicklistIter *li = quicklistGetIterator(list, AL_START_HEAD);
        quicklistEntry entry;

        while (quicklistNext(li,&entry)) {
            if (count == 0) {
                int cmd_items = (items > AOF_REWRITE_ITEMS_PER_CMD) ?
                    AOF_REWRITE_ITEMS_PER_CMD : items;
                if (rioWriteBulkCount(r,'*',2+cmd_items) == 0) return 0;
                if (rioWriteBulkString(r,"RPUSH",5) == 0) return 0;
                if (rioWriteBulkObject(r,key) == 0) return 0;
            }

            if (entry.value) {
                if (rioWriteBulkString(r,(char*)entry.value,entry.sz) == 0) return 0;
            } else {
                if (rioWriteBulkLongLong(r,entry.longval) == 0) return 0;
            }
            if (++count == AOF_REWRITE_ITEMS_PER_CMD) count = 0;
            items--;
        }
        quicklistReleaseIterator(li);
    } else {
        serverPanic("Unknown list encoding");
    }
    return 1;
}
