
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int robj ;
struct TYPE_14__ {int argc; TYPE_2__* db; TYPE_3__** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_18__ {int dirty; } ;
struct TYPE_17__ {int ok; } ;
struct TYPE_16__ {char* ptr; } ;
struct TYPE_15__ {int id; } ;


 int HASH_SET_COPY ;
 int NOTIFY_HASH ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyError (TYPE_1__*,char*) ;
 int addReplyLongLong (TYPE_1__*,int) ;
 int * hashTypeLookupWriteOrCreate (TYPE_1__*,TYPE_3__*) ;
 int hashTypeSet (int *,char*,char*,int ) ;
 int hashTypeTryConversion (int *,TYPE_3__**,int,int) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_3__*,int ) ;
 TYPE_5__ server ;
 TYPE_4__ shared ;
 int signalModifiedKey (TYPE_2__*,TYPE_3__*) ;

void hsetCommand(client *c) {
    int i, created = 0;
    robj *o;

    if ((c->argc % 2) == 1) {
        addReplyError(c,"wrong number of arguments for HMSET");
        return;
    }

    if ((o = hashTypeLookupWriteOrCreate(c,c->argv[1])) == ((void*)0)) return;
    hashTypeTryConversion(o,c->argv,2,c->argc-1);

    for (i = 2; i < c->argc; i += 2)
        created += !hashTypeSet(o,c->argv[i]->ptr,c->argv[i+1]->ptr,HASH_SET_COPY);


    char *cmdname = c->argv[0]->ptr;
    if (cmdname[1] == 's' || cmdname[1] == 'S') {

        addReplyLongLong(c, created);
    } else {

        addReply(c, shared.ok);
    }
    signalModifiedKey(c->db,c->argv[1]);
    notifyKeyspaceEvent(NOTIFY_HASH,"hset",c->argv[1],c->db->id);
    server.dirty++;
}
