
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ encoding; } ;
typedef TYPE_1__ robj ;
struct TYPE_20__ {int longval; int sz; scalar_t__ value; } ;
typedef TYPE_2__ quicklistEntry ;
typedef int listTypeIterator ;
struct TYPE_21__ {TYPE_2__ entry; } ;
typedef TYPE_3__ listTypeEntry ;
struct TYPE_22__ {int * argv; } ;
typedef TYPE_4__ client ;
struct TYPE_23__ {int emptyarray; } ;


 scalar_t__ C_OK ;
 int LIST_TAIL ;
 scalar_t__ OBJ_ENCODING_QUICKLIST ;
 int OBJ_LIST ;
 int addReply (TYPE_4__*,int ) ;
 int addReplyArrayLen (TYPE_4__*,long) ;
 int addReplyBulkCBuffer (TYPE_4__*,scalar_t__,int ) ;
 int addReplyBulkLongLong (TYPE_4__*,int ) ;
 scalar_t__ checkType (TYPE_4__*,TYPE_1__*,int ) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_4__*,int ,long*,int *) ;
 int * listTypeInitIterator (TYPE_1__*,long,int ) ;
 long listTypeLength (TYPE_1__*) ;
 int listTypeNext (int *,TYPE_3__*) ;
 int listTypeReleaseIterator (int *) ;
 TYPE_1__* lookupKeyReadOrReply (TYPE_4__*,int ,int ) ;
 int serverPanic (char*) ;
 TYPE_5__ shared ;

void lrangeCommand(client *c) {
    robj *o;
    long start, end, llen, rangelen;

    if ((getLongFromObjectOrReply(c, c->argv[2], &start, ((void*)0)) != C_OK) ||
        (getLongFromObjectOrReply(c, c->argv[3], &end, ((void*)0)) != C_OK)) return;

    if ((o = lookupKeyReadOrReply(c,c->argv[1],shared.emptyarray)) == ((void*)0)
         || checkType(c,o,OBJ_LIST)) return;
    llen = listTypeLength(o);


    if (start < 0) start = llen+start;
    if (end < 0) end = llen+end;
    if (start < 0) start = 0;



    if (start > end || start >= llen) {
        addReply(c,shared.emptyarray);
        return;
    }
    if (end >= llen) end = llen-1;
    rangelen = (end-start)+1;


    addReplyArrayLen(c,rangelen);
    if (o->encoding == OBJ_ENCODING_QUICKLIST) {
        listTypeIterator *iter = listTypeInitIterator(o, start, LIST_TAIL);

        while(rangelen--) {
            listTypeEntry entry;
            listTypeNext(iter, &entry);
            quicklistEntry *qe = &entry.entry;
            if (qe->value) {
                addReplyBulkCBuffer(c,qe->value,qe->sz);
            } else {
                addReplyBulkLongLong(c,qe->longval);
            }
        }
        listTypeReleaseIterator(iter);
    } else {
        serverPanic("List encoding is not QUICKLIST!");
    }
}
