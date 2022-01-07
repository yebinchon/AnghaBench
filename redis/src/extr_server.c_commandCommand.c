
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct redisCommand {scalar_t__ firstkey; int arity; int * getkeys_proc; } ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_13__ {int argc; TYPE_3__** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_15__ {int ptr; } ;
struct TYPE_14__ {int commands; } ;


 int addReplyArrayLen (TYPE_1__*,int) ;
 int addReplyBulk (TYPE_1__*,TYPE_3__*) ;
 int addReplyCommand (TYPE_1__*,int ) ;
 int addReplyError (TYPE_1__*,char*) ;
 int addReplyHelp (TYPE_1__*,char const**) ;
 int addReplyLongLong (TYPE_1__*,int) ;
 int addReplySubcommandSyntaxError (TYPE_1__*) ;
 int dictFetchValue (int ,int ) ;
 int * dictGetIterator (int ) ;
 int dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int dictSize (int ) ;
 int getKeysFreeResult (int*) ;
 int* getKeysFromCommand (struct redisCommand*,TYPE_3__**,int,int*) ;
 struct redisCommand* lookupCommand (int ) ;
 TYPE_2__ server ;
 int strcasecmp (int ,char*) ;

void commandCommand(client *c) {
    dictIterator *di;
    dictEntry *de;

    if (c->argc == 2 && !strcasecmp(c->argv[1]->ptr,"help")) {
        const char *help[] = {
"(no subcommand) -- Return details about all Redis commands.",
"COUNT -- Return the total number of commands in this Redis server.",
"GETKEYS <full-command> -- Return the keys from a full Redis command.",
"INFO [command-name ...] -- Return details about multiple Redis commands.",
((void*)0)
        };
        addReplyHelp(c, help);
    } else if (c->argc == 1) {
        addReplyArrayLen(c, dictSize(server.commands));
        di = dictGetIterator(server.commands);
        while ((de = dictNext(di)) != ((void*)0)) {
            addReplyCommand(c, dictGetVal(de));
        }
        dictReleaseIterator(di);
    } else if (!strcasecmp(c->argv[1]->ptr, "info")) {
        int i;
        addReplyArrayLen(c, c->argc-2);
        for (i = 2; i < c->argc; i++) {
            addReplyCommand(c, dictFetchValue(server.commands, c->argv[i]->ptr));
        }
    } else if (!strcasecmp(c->argv[1]->ptr, "count") && c->argc == 2) {
        addReplyLongLong(c, dictSize(server.commands));
    } else if (!strcasecmp(c->argv[1]->ptr,"getkeys") && c->argc >= 3) {
        struct redisCommand *cmd = lookupCommand(c->argv[2]->ptr);
        int *keys, numkeys, j;

        if (!cmd) {
            addReplyError(c,"Invalid command specified");
            return;
        } else if (cmd->getkeys_proc == ((void*)0) && cmd->firstkey == 0) {
            addReplyError(c,"The command has no key arguments");
            return;
        } else if ((cmd->arity > 0 && cmd->arity != c->argc-2) ||
                   ((c->argc-2) < -cmd->arity))
        {
            addReplyError(c,"Invalid number of arguments specified for command");
            return;
        }

        keys = getKeysFromCommand(cmd,c->argv+2,c->argc-2,&numkeys);
        if (!keys) {
            addReplyError(c,"Invalid arguments specified for command");
        } else {
            addReplyArrayLen(c,numkeys);
            for (j = 0; j < numkeys; j++) addReplyBulk(c,c->argv[keys[j]+2]);
            getKeysFreeResult(keys);
        }
    } else {
        addReplySubcommandSyntaxError(c);
    }
}
