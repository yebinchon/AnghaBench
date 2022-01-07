
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redisCommand {int flags; int* (* getkeys_proc ) (struct redisCommand*,int **,int,int*) ;} ;
typedef int robj ;


 int CMD_MODULE ;
 int CMD_MODULE_GETKEYS ;
 int* getKeysUsingCommandTable (struct redisCommand*,int **,int,int*) ;
 int* moduleGetCommandKeysViaAPI (struct redisCommand*,int **,int,int*) ;
 int* stub1 (struct redisCommand*,int **,int,int*) ;

int *getKeysFromCommand(struct redisCommand *cmd, robj **argv, int argc, int *numkeys) {
    if (cmd->flags & CMD_MODULE_GETKEYS) {
        return moduleGetCommandKeysViaAPI(cmd,argv,argc,numkeys);
    } else if (!(cmd->flags & CMD_MODULE) && cmd->getkeys_proc) {
        return cmd->getkeys_proc(cmd,argv,argc,numkeys);
    } else {
        return getKeysUsingCommandTable(cmd,argv,argc,numkeys);
    }
}
