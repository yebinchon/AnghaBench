
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
 scalar_t__ ACLGetUserCommandBit (int *,int ) ;
 int C_ERR ;
 int C_OK ;
 int * dictGetIterator (int ) ;
 struct redisCommand* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 TYPE_1__ server ;

int ACLCountCategoryBitsForUser(user *u, unsigned long *on, unsigned long *off,
                                const char *category)
{
    uint64_t cflag = ACLGetCommandCategoryFlagByName(category);
    if (!cflag) return C_ERR;

    *on = *off = 0;
    dictIterator *di = dictGetIterator(server.orig_commands);
    dictEntry *de;
    while ((de = dictNext(di)) != ((void*)0)) {
        struct redisCommand *cmd = dictGetVal(de);
        if (cmd->flags & cflag) {
            if (ACLGetUserCommandBit(u,cmd->id))
                (*on)++;
            else
                (*off)++;
        }
    }
    dictReleaseIterator(di);
    return C_OK;
}
