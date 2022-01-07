
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int sds ;
typedef int robj ;
struct TYPE_13__ {TYPE_2__* db; TYPE_3__** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_16__ {int dirty; } ;
struct TYPE_15__ {int ptr; } ;
struct TYPE_14__ {int id; } ;


 scalar_t__ C_OK ;
 int HASH_SET_TAKE_VALUE ;
 long long LLONG_MAX ;
 long long LLONG_MIN ;
 int NOTIFY_HASH ;
 int addReplyError (TYPE_1__*,char*) ;
 int addReplyLongLong (TYPE_1__*,long long) ;
 scalar_t__ getLongLongFromObjectOrReply (TYPE_1__*,TYPE_3__*,long long*,int *) ;
 scalar_t__ hashTypeGetValue (int *,int ,unsigned char**,unsigned int*,long long*) ;
 int * hashTypeLookupWriteOrCreate (TYPE_1__*,TYPE_3__*) ;
 int hashTypeSet (int *,int ,int ,int ) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_3__*,int ) ;
 int sdsfromlonglong (long long) ;
 TYPE_4__ server ;
 int signalModifiedKey (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ string2ll (char*,unsigned int,long long*) ;

void hincrbyCommand(client *c) {
    long long value, incr, oldvalue;
    robj *o;
    sds new;
    unsigned char *vstr;
    unsigned int vlen;

    if (getLongLongFromObjectOrReply(c,c->argv[3],&incr,((void*)0)) != C_OK) return;
    if ((o = hashTypeLookupWriteOrCreate(c,c->argv[1])) == ((void*)0)) return;
    if (hashTypeGetValue(o,c->argv[2]->ptr,&vstr,&vlen,&value) == C_OK) {
        if (vstr) {
            if (string2ll((char*)vstr,vlen,&value) == 0) {
                addReplyError(c,"hash value is not an integer");
                return;
            }
        }
    } else {
        value = 0;
    }

    oldvalue = value;
    if ((incr < 0 && oldvalue < 0 && incr < (LLONG_MIN-oldvalue)) ||
        (incr > 0 && oldvalue > 0 && incr > (LLONG_MAX-oldvalue))) {
        addReplyError(c,"increment or decrement would overflow");
        return;
    }
    value += incr;
    new = sdsfromlonglong(value);
    hashTypeSet(o,c->argv[2]->ptr,new,HASH_SET_TAKE_VALUE);
    addReplyLongLong(c,value);
    signalModifiedKey(c->db,c->argv[1]);
    notifyKeyspaceEvent(NOTIFY_HASH,"hincrby",c->argv[1],c->db->id);
    server.dirty++;
}
