
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ type; } ;
typedef TYPE_1__ robj ;
typedef int mstime_t ;
struct TYPE_14__ {int argc; int flags; int * argv; int db; } ;
typedef TYPE_2__ client ;
struct TYPE_15__ {int zpopmin; int zpopmax; int wrongtypeerr; } ;


 int BLOCKED_ZSET ;
 int CLIENT_MULTI ;
 scalar_t__ C_OK ;
 scalar_t__ OBJ_ZSET ;
 int UNIT_SECONDS ;
 int ZSET_MAX ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyNullArray (TYPE_2__*) ;
 int blockForKeys (TYPE_2__*,int ,int *,int,int ,int *,int *) ;
 int genericZpopCommand (TYPE_2__*,int *,int,int,int,int *) ;
 scalar_t__ getTimeoutFromObjectOrReply (TYPE_2__*,int ,int *,int ) ;
 TYPE_1__* lookupKeyWrite (int ,int ) ;
 int rewriteClientCommandVector (TYPE_2__*,int,int ,int ) ;
 TYPE_4__ shared ;
 scalar_t__ zsetLength (TYPE_1__*) ;

void blockingGenericZpopCommand(client *c, int where) {
    robj *o;
    mstime_t timeout;
    int j;

    if (getTimeoutFromObjectOrReply(c,c->argv[c->argc-1],&timeout,UNIT_SECONDS)
        != C_OK) return;

    for (j = 1; j < c->argc-1; j++) {
        o = lookupKeyWrite(c->db,c->argv[j]);
        if (o != ((void*)0)) {
            if (o->type != OBJ_ZSET) {
                addReply(c,shared.wrongtypeerr);
                return;
            } else {
                if (zsetLength(o) != 0) {

                    genericZpopCommand(c,&c->argv[j],1,where,1,((void*)0));

                    rewriteClientCommandVector(c,2,
                        where == ZSET_MAX ? shared.zpopmax : shared.zpopmin,
                        c->argv[j]);
                    return;
                }
            }
        }
    }



    if (c->flags & CLIENT_MULTI) {
        addReplyNullArray(c);
        return;
    }


    blockForKeys(c,BLOCKED_ZSET,c->argv + 1,c->argc - 2,timeout,((void*)0),((void*)0));
}
