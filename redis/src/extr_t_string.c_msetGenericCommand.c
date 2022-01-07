
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int argc; TYPE_3__* db; int * argv; } ;
typedef TYPE_1__ client ;
struct TYPE_12__ {int dirty; } ;
struct TYPE_11__ {int id; } ;
struct TYPE_10__ {int ok; int cone; int czero; } ;


 int NOTIFY_STRING ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyError (TYPE_1__*,char*) ;
 int * lookupKeyWrite (TYPE_3__*,int ) ;
 int notifyKeyspaceEvent (int ,char*,int ,int ) ;
 TYPE_4__ server ;
 int setKey (TYPE_3__*,int ,int ) ;
 TYPE_2__ shared ;
 int tryObjectEncoding (int ) ;

void msetGenericCommand(client *c, int nx) {
    int j;

    if ((c->argc % 2) == 0) {
        addReplyError(c,"wrong number of arguments for MSET");
        return;
    }



    if (nx) {
        for (j = 1; j < c->argc; j += 2) {
            if (lookupKeyWrite(c->db,c->argv[j]) != ((void*)0)) {
                addReply(c, shared.czero);
                return;
            }
        }
    }

    for (j = 1; j < c->argc; j += 2) {
        c->argv[j+1] = tryObjectEncoding(c->argv[j+1]);
        setKey(c->db,c->argv[j],c->argv[j+1]);
        notifyKeyspaceEvent(NOTIFY_STRING,"set",c->argv[j],c->db->id);
    }
    server.dirty += (c->argc-1)/2;
    addReply(c, nx ? shared.cone : shared.ok);
}
