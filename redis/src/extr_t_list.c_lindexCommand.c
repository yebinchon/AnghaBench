
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ encoding; int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_19__ {int longval; int sz; scalar_t__ value; } ;
typedef TYPE_2__ quicklistEntry ;
struct TYPE_20__ {size_t resp; int * argv; } ;
typedef TYPE_3__ client ;
struct TYPE_21__ {int * null; } ;


 scalar_t__ C_OK ;
 scalar_t__ OBJ_ENCODING_QUICKLIST ;
 int OBJ_LIST ;
 int addReplyBulk (TYPE_3__*,TYPE_1__*) ;
 int addReplyNull (TYPE_3__*) ;
 scalar_t__ checkType (TYPE_3__*,TYPE_1__*,int ) ;
 TYPE_1__* createStringObject (char*,int ) ;
 TYPE_1__* createStringObjectFromLongLong (int ) ;
 int decrRefCount (TYPE_1__*) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_3__*,int ,long*,int *) ;
 TYPE_1__* lookupKeyReadOrReply (TYPE_3__*,int ,int ) ;
 scalar_t__ quicklistIndex (int ,long,TYPE_2__*) ;
 int serverPanic (char*) ;
 TYPE_4__ shared ;

void lindexCommand(client *c) {
    robj *o = lookupKeyReadOrReply(c,c->argv[1],shared.null[c->resp]);
    if (o == ((void*)0) || checkType(c,o,OBJ_LIST)) return;
    long index;
    robj *value = ((void*)0);

    if ((getLongFromObjectOrReply(c, c->argv[2], &index, ((void*)0)) != C_OK))
        return;

    if (o->encoding == OBJ_ENCODING_QUICKLIST) {
        quicklistEntry entry;
        if (quicklistIndex(o->ptr, index, &entry)) {
            if (entry.value) {
                value = createStringObject((char*)entry.value,entry.sz);
            } else {
                value = createStringObjectFromLongLong(entry.longval);
            }
            addReplyBulk(c,value);
            decrRefCount(value);
        } else {
            addReplyNull(c);
        }
    } else {
        serverPanic("Unknown list encoding");
    }
}
