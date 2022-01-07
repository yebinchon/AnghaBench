
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; int patterns; int *** allowed_subcommands; } ;
typedef TYPE_1__ user ;
typedef size_t uint64_t ;
typedef int sds ;
typedef int listNode ;
typedef int listIter ;
struct TYPE_8__ {int argc; TYPE_4__** argv; TYPE_3__* cmd; TYPE_1__* user; } ;
typedef TYPE_2__ client ;
struct TYPE_10__ {int ptr; } ;
struct TYPE_9__ {size_t id; scalar_t__ proc; scalar_t__ firstkey; scalar_t__ getkeys_proc; } ;


 scalar_t__ ACLGetUserCommandBit (TYPE_1__*,size_t) ;
 int ACL_DENIED_CMD ;
 int ACL_DENIED_KEY ;
 int ACL_OK ;
 int USER_FLAG_ALLCOMMANDS ;
 int USER_FLAG_ALLKEYS ;
 scalar_t__ authCommand ;
 int getKeysFreeResult (int*) ;
 int* getKeysFromCommand (TYPE_3__*,TYPE_4__**,int,int*) ;
 int * listNext (int *) ;
 int listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 size_t sdslen (int ) ;
 int strcasecmp (int ,int *) ;
 scalar_t__ stringmatchlen (int ,size_t,int ,size_t,int ) ;

int ACLCheckCommandPerm(client *c) {
    user *u = c->user;
    uint64_t id = c->cmd->id;


    if (u == ((void*)0)) return ACL_OK;


    if (!(u->flags & USER_FLAG_ALLCOMMANDS) &&
        c->cmd->proc != authCommand)
    {


        if (ACLGetUserCommandBit(u,id) == 0) {

            if (c->argc < 2 ||
                u->allowed_subcommands == ((void*)0) ||
                u->allowed_subcommands[id] == ((void*)0))
            {
                return ACL_DENIED_CMD;
            }

            long subid = 0;
            while (1) {
                if (u->allowed_subcommands[id][subid] == ((void*)0))
                    return ACL_DENIED_CMD;
                if (!strcasecmp(c->argv[1]->ptr,
                                u->allowed_subcommands[id][subid]))
                    break;
                subid++;
            }
        }
    }



    if (!(c->user->flags & USER_FLAG_ALLKEYS) &&
        (c->cmd->getkeys_proc || c->cmd->firstkey))
    {
        int numkeys;
        int *keyidx = getKeysFromCommand(c->cmd,c->argv,c->argc,&numkeys);
        for (int j = 0; j < numkeys; j++) {
            listIter li;
            listNode *ln;
            listRewind(u->patterns,&li);


            int match = 0;
            while((ln = listNext(&li))) {
                sds pattern = listNodeValue(ln);
                size_t plen = sdslen(pattern);
                int idx = keyidx[j];
                if (stringmatchlen(pattern,plen,c->argv[idx]->ptr,
                                   sdslen(c->argv[idx]->ptr),0))
                {
                    match = 1;
                    break;
                }
            }
            if (!match) {
                getKeysFreeResult(keyidx);
                return ACL_DENIED_KEY;
            }
        }
        getKeysFreeResult(keyidx);
    }



    return ACL_OK;
}
