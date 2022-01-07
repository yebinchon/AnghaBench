
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct redisCommand {scalar_t__ proc; scalar_t__ getkeys_proc; } ;
struct RedisModule {int dummy; } ;
typedef int sds ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_5__ {int orig_commands; int commands; } ;
struct TYPE_4__ {struct TYPE_4__* rediscmd; struct RedisModule* module; int name; } ;
typedef TYPE_1__ RedisModuleCommandProxy ;


 scalar_t__ RedisModuleCommandDispatcher ;
 int dictDelete (int ,int ) ;
 int * dictGetSafeIterator (int ) ;
 struct redisCommand* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int sdsfree (int ) ;
 TYPE_3__ server ;
 int zfree (TYPE_1__*) ;

void moduleUnregisterCommands(struct RedisModule *module) {

    dictIterator *di = dictGetSafeIterator(server.commands);
    dictEntry *de;
    while ((de = dictNext(di)) != ((void*)0)) {
        struct redisCommand *cmd = dictGetVal(de);
        if (cmd->proc == RedisModuleCommandDispatcher) {
            RedisModuleCommandProxy *cp =
                (void*)(unsigned long)cmd->getkeys_proc;
            sds cmdname = cp->rediscmd->name;
            if (cp->module == module) {
                dictDelete(server.commands,cmdname);
                dictDelete(server.orig_commands,cmdname);
                sdsfree(cmdname);
                zfree(cp->rediscmd);
                zfree(cp);
            }
        }
    }
    dictReleaseIterator(di);
}
