
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int robj ;
struct TYPE_12__ {TYPE_2__* db; TYPE_3__** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_16__ {int dirty; } ;
struct TYPE_15__ {int cone; int czero; } ;
struct TYPE_14__ {int ptr; } ;
struct TYPE_13__ {int id; } ;


 int HASH_SET_COPY ;
 int NOTIFY_HASH ;
 int addReply (TYPE_1__*,int ) ;
 scalar_t__ hashTypeExists (int *,int ) ;
 int * hashTypeLookupWriteOrCreate (TYPE_1__*,TYPE_3__*) ;
 int hashTypeSet (int *,int ,int ,int ) ;
 int hashTypeTryConversion (int *,TYPE_3__**,int,int) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_3__*,int ) ;
 TYPE_5__ server ;
 TYPE_4__ shared ;
 int signalModifiedKey (TYPE_2__*,TYPE_3__*) ;

void hsetnxCommand(client *c) {
    robj *o;
    if ((o = hashTypeLookupWriteOrCreate(c,c->argv[1])) == ((void*)0)) return;
    hashTypeTryConversion(o,c->argv,2,3);

    if (hashTypeExists(o, c->argv[2]->ptr)) {
        addReply(c, shared.czero);
    } else {
        hashTypeSet(o,c->argv[2]->ptr,c->argv[3]->ptr,HASH_SET_COPY);
        addReply(c, shared.cone);
        signalModifiedKey(c->db,c->argv[1]);
        notifyKeyspaceEvent(NOTIFY_HASH,"hset",c->argv[1],c->db->id);
        server.dirty++;
    }
}
