
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct redisCommand {scalar_t__ proc; int flags; } ;
struct TYPE_18__ {scalar_t__ ptr; } ;
typedef TYPE_2__ robj ;
struct TYPE_19__ {int count; TYPE_4__* commands; } ;
typedef TYPE_3__ multiState ;
struct TYPE_20__ {int argc; TYPE_2__** argv; struct redisCommand* cmd; } ;
typedef TYPE_4__ multiCmd ;
struct TYPE_21__ {struct TYPE_21__* slaveof; } ;
typedef TYPE_5__ clusterNode ;
struct TYPE_22__ {int flags; TYPE_3__ mstate; } ;
typedef TYPE_6__ client ;
struct TYPE_23__ {int cluster_module_flags; TYPE_1__* cluster; int * db; } ;
struct TYPE_17__ {scalar_t__ state; TYPE_5__** migrating_slots_to; int ** importing_slots_from; TYPE_5__** slots; } ;


 int CLIENT_ASKING ;
 int CLIENT_MULTI ;
 int CLIENT_READONLY ;
 int CLUSTER_MODULE_FLAG_NO_REDIRECTION ;
 scalar_t__ CLUSTER_OK ;
 int CLUSTER_REDIR_ASK ;
 int CLUSTER_REDIR_CROSS_SLOT ;
 int CLUSTER_REDIR_DOWN_STATE ;
 int CLUSTER_REDIR_DOWN_UNBOUND ;
 int CLUSTER_REDIR_MOVED ;
 int CLUSTER_REDIR_NONE ;
 int CLUSTER_REDIR_UNSTABLE ;
 int CMD_ASKING ;
 int CMD_READONLY ;
 int equalStringObjects (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ evalCommand ;
 scalar_t__ evalShaCommand ;
 scalar_t__ execCommand ;
 int getKeysFreeResult (int*) ;
 int* getKeysFromCommand (struct redisCommand*,TYPE_2__**,int,int*) ;
 int keyHashSlot (char*,int ) ;
 int * lookupKeyRead (int *,TYPE_2__*) ;
 scalar_t__ migrateCommand ;
 TYPE_5__* myself ;
 scalar_t__ nodeIsSlave (TYPE_5__*) ;
 int sdslen (scalar_t__) ;
 TYPE_7__ server ;

clusterNode *getNodeByQuery(client *c, struct redisCommand *cmd, robj **argv, int argc, int *hashslot, int *error_code) {
    clusterNode *n = ((void*)0);
    robj *firstkey = ((void*)0);
    int multiple_keys = 0;
    multiState *ms, _ms;
    multiCmd mc;
    int i, slot = 0, migrating_slot = 0, importing_slot = 0, missing_keys = 0;


    if (server.cluster_module_flags & CLUSTER_MODULE_FLAG_NO_REDIRECTION)
        return myself;


    if (error_code) *error_code = CLUSTER_REDIR_NONE;







    if (cmd->proc == execCommand) {


        if (!(c->flags & CLIENT_MULTI)) return myself;
        ms = &c->mstate;
    } else {



        ms = &_ms;
        _ms.commands = &mc;
        _ms.count = 1;
        mc.argv = argv;
        mc.argc = argc;
        mc.cmd = cmd;
    }



    for (i = 0; i < ms->count; i++) {
        struct redisCommand *mcmd;
        robj **margv;
        int margc, *keyindex, numkeys, j;

        mcmd = ms->commands[i].cmd;
        margc = ms->commands[i].argc;
        margv = ms->commands[i].argv;

        keyindex = getKeysFromCommand(mcmd,margv,margc,&numkeys);
        for (j = 0; j < numkeys; j++) {
            robj *thiskey = margv[keyindex[j]];
            int thisslot = keyHashSlot((char*)thiskey->ptr,
                                       sdslen(thiskey->ptr));

            if (firstkey == ((void*)0)) {


                firstkey = thiskey;
                slot = thisslot;
                n = server.cluster->slots[slot];





                if (n == ((void*)0)) {
                    getKeysFreeResult(keyindex);
                    if (error_code)
                        *error_code = CLUSTER_REDIR_DOWN_UNBOUND;
                    return ((void*)0);
                }






                if (n == myself &&
                    server.cluster->migrating_slots_to[slot] != ((void*)0))
                {
                    migrating_slot = 1;
                } else if (server.cluster->importing_slots_from[slot] != ((void*)0)) {
                    importing_slot = 1;
                }
            } else {


                if (!equalStringObjects(firstkey,thiskey)) {
                    if (slot != thisslot) {

                        getKeysFreeResult(keyindex);
                        if (error_code)
                            *error_code = CLUSTER_REDIR_CROSS_SLOT;
                        return ((void*)0);
                    } else {


                        multiple_keys = 1;
                    }
                }
            }


            if ((migrating_slot || importing_slot) &&
                lookupKeyRead(&server.db[0],thiskey) == ((void*)0))
            {
                missing_keys++;
            }
        }
        getKeysFreeResult(keyindex);
    }



    if (n == ((void*)0)) return myself;


    if (server.cluster->state != CLUSTER_OK) {
        if (error_code) *error_code = CLUSTER_REDIR_DOWN_STATE;
        return ((void*)0);
    }


    if (hashslot) *hashslot = slot;




    if ((migrating_slot || importing_slot) && cmd->proc == migrateCommand)
        return myself;



    if (migrating_slot && missing_keys) {
        if (error_code) *error_code = CLUSTER_REDIR_ASK;
        return server.cluster->migrating_slots_to[slot];
    }





    if (importing_slot &&
        (c->flags & CLIENT_ASKING || cmd->flags & CMD_ASKING))
    {
        if (multiple_keys && missing_keys) {
            if (error_code) *error_code = CLUSTER_REDIR_UNSTABLE;
            return ((void*)0);
        } else {
            return myself;
        }
    }




    if (c->flags & CLIENT_READONLY &&
        (cmd->flags & CMD_READONLY || cmd->proc == evalCommand ||
         cmd->proc == evalShaCommand) &&
        nodeIsSlave(myself) &&
        myself->slaveof == n)
    {
        return myself;
    }



    if (n != myself && error_code) *error_code = CLUSTER_REDIR_MOVED;
    return n;
}
