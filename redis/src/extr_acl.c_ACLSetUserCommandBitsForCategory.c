
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int user ;
typedef int uint64_t ;
struct redisCommand {int flags; int id; } ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_2__ {int orig_commands; } ;


 int ACLGetCommandCategoryFlagByName (char const*) ;
 int ACLResetSubcommandsForCommand (int *,int ) ;
 int ACLSetUserCommandBit (int *,int ,int) ;
 int CMD_MODULE ;
 int C_ERR ;
 int C_OK ;
 int * dictGetIterator (int ) ;
 struct redisCommand* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 TYPE_1__ server ;

int ACLSetUserCommandBitsForCategory(user *u, const char *category, int value) {
    uint64_t cflag = ACLGetCommandCategoryFlagByName(category);
    if (!cflag) return C_ERR;
    dictIterator *di = dictGetIterator(server.orig_commands);
    dictEntry *de;
    while ((de = dictNext(di)) != ((void*)0)) {
        struct redisCommand *cmd = dictGetVal(de);
        if (cmd->flags & CMD_MODULE) continue;
        if (cmd->flags & cflag) {
            ACLSetUserCommandBit(u,cmd->id,value);
            ACLResetSubcommandsForCommand(u,cmd->id);
        }
    }
    dictReleaseIterator(di);
    return C_OK;
}
