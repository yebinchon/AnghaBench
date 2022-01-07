
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int robj ;
typedef int hashTypeIterator ;
struct TYPE_9__ {size_t resp; int * argv; } ;
typedef TYPE_1__ client ;
struct TYPE_10__ {int * emptymap; } ;


 scalar_t__ C_ERR ;
 int OBJ_HASH ;
 int OBJ_HASH_KEY ;
 int OBJ_HASH_VALUE ;
 int addHashIteratorCursorToReply (TYPE_1__*,int *,int) ;
 int addReplyArrayLen (TYPE_1__*,int) ;
 int addReplyMapLen (TYPE_1__*,int) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 int * hashTypeInitIterator (int *) ;
 int hashTypeLength (int *) ;
 scalar_t__ hashTypeNext (int *) ;
 int hashTypeReleaseIterator (int *) ;
 int * lookupKeyReadOrReply (TYPE_1__*,int ,int ) ;
 int serverAssert (int) ;
 TYPE_2__ shared ;

void genericHgetallCommand(client *c, int flags) {
    robj *o;
    hashTypeIterator *hi;
    int length, count = 0;

    if ((o = lookupKeyReadOrReply(c,c->argv[1],shared.emptymap[c->resp]))
        == ((void*)0) || checkType(c,o,OBJ_HASH)) return;



    length = hashTypeLength(o);
    if (flags & OBJ_HASH_KEY && flags & OBJ_HASH_VALUE) {
        addReplyMapLen(c, length);
    } else {
        addReplyArrayLen(c, length);
    }

    hi = hashTypeInitIterator(o);
    while (hashTypeNext(hi) != C_ERR) {
        if (flags & OBJ_HASH_KEY) {
            addHashIteratorCursorToReply(c, hi, OBJ_HASH_KEY);
            count++;
        }
        if (flags & OBJ_HASH_VALUE) {
            addHashIteratorCursorToReply(c, hi, OBJ_HASH_VALUE);
            count++;
        }
    }

    hashTypeReleaseIterator(hi);


    if (flags & OBJ_HASH_KEY && flags & OBJ_HASH_VALUE) count /= 2;
    serverAssert(count == length);
}
