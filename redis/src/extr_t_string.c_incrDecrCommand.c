
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {int refcount; scalar_t__ encoding; void* ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_22__ {TYPE_3__* db; int * argv; } ;
typedef TYPE_2__ client ;
struct TYPE_25__ {int dirty; } ;
struct TYPE_24__ {TYPE_1__* crlf; TYPE_1__* colon; } ;
struct TYPE_23__ {int id; } ;


 scalar_t__ C_OK ;
 long long LLONG_MAX ;
 long long LLONG_MIN ;
 long long LONG_MAX ;
 long long LONG_MIN ;
 int NOTIFY_STRING ;
 scalar_t__ OBJ_ENCODING_INT ;
 long long OBJ_SHARED_INTEGERS ;
 int OBJ_STRING ;
 int addReply (TYPE_2__*,TYPE_1__*) ;
 int addReplyError (TYPE_2__*,char*) ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 TYPE_1__* createStringObjectFromLongLongForValue (long long) ;
 int dbAdd (TYPE_3__*,int ,TYPE_1__*) ;
 int dbOverwrite (TYPE_3__*,int ,TYPE_1__*) ;
 scalar_t__ getLongLongFromObjectOrReply (TYPE_2__*,TYPE_1__*,long long*,int *) ;
 TYPE_1__* lookupKeyWrite (TYPE_3__*,int ) ;
 int notifyKeyspaceEvent (int ,char*,int ,int ) ;
 TYPE_5__ server ;
 TYPE_4__ shared ;
 int signalModifiedKey (TYPE_3__*,int ) ;

void incrDecrCommand(client *c, long long incr) {
    long long value, oldvalue;
    robj *o, *new;

    o = lookupKeyWrite(c->db,c->argv[1]);
    if (o != ((void*)0) && checkType(c,o,OBJ_STRING)) return;
    if (getLongLongFromObjectOrReply(c,o,&value,((void*)0)) != C_OK) return;

    oldvalue = value;
    if ((incr < 0 && oldvalue < 0 && incr < (LLONG_MIN-oldvalue)) ||
        (incr > 0 && oldvalue > 0 && incr > (LLONG_MAX-oldvalue))) {
        addReplyError(c,"increment or decrement would overflow");
        return;
    }
    value += incr;

    if (o && o->refcount == 1 && o->encoding == OBJ_ENCODING_INT &&
        (value < 0 || value >= OBJ_SHARED_INTEGERS) &&
        value >= LONG_MIN && value <= LONG_MAX)
    {
        new = o;
        o->ptr = (void*)((long)value);
    } else {
        new = createStringObjectFromLongLongForValue(value);
        if (o) {
            dbOverwrite(c->db,c->argv[1],new);
        } else {
            dbAdd(c->db,c->argv[1],new);
        }
    }
    signalModifiedKey(c->db,c->argv[1]);
    notifyKeyspaceEvent(NOTIFY_STRING,"incrby",c->argv[1],c->db->id);
    server.dirty++;
    addReply(c,shared.colon);
    addReply(c,new);
    addReply(c,shared.crlf);
}
