
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ type; } ;
typedef TYPE_1__ robj ;
typedef int mstime_t ;
struct TYPE_15__ {int flags; int * argv; int db; } ;
typedef TYPE_2__ client ;
struct TYPE_16__ {int wrongtypeerr; } ;


 int BLOCKED_LIST ;
 int CLIENT_MULTI ;
 scalar_t__ C_OK ;
 scalar_t__ OBJ_LIST ;
 int UNIT_SECONDS ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyNull (TYPE_2__*) ;
 int blockForKeys (TYPE_2__*,int ,int *,int,int ,int ,int *) ;
 scalar_t__ getTimeoutFromObjectOrReply (TYPE_2__*,int ,int *,int ) ;
 scalar_t__ listTypeLength (TYPE_1__*) ;
 TYPE_1__* lookupKeyWrite (int ,int ) ;
 int rpoplpushCommand (TYPE_2__*) ;
 int serverAssertWithInfo (TYPE_2__*,TYPE_1__*,int) ;
 TYPE_3__ shared ;

void brpoplpushCommand(client *c) {
    mstime_t timeout;

    if (getTimeoutFromObjectOrReply(c,c->argv[3],&timeout,UNIT_SECONDS)
        != C_OK) return;

    robj *key = lookupKeyWrite(c->db, c->argv[1]);

    if (key == ((void*)0)) {
        if (c->flags & CLIENT_MULTI) {


            addReplyNull(c);
        } else {

            blockForKeys(c,BLOCKED_LIST,c->argv + 1,1,timeout,c->argv[2],((void*)0));
        }
    } else {
        if (key->type != OBJ_LIST) {
            addReply(c, shared.wrongtypeerr);
        } else {


            serverAssertWithInfo(c,key,listTypeLength(key) > 0);
            rpoplpushCommand(c);
        }
    }
}
