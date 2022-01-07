
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char*** allowed_subcommands; int allowed_commands; int member_0; } ;
typedef TYPE_1__ user ;
struct redisCommand {size_t id; char* name; } ;
typedef char* sds ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_12__ {scalar_t__ flag; char* name; } ;
struct TYPE_11__ {int orig_commands; } ;


 TYPE_9__* ACLCommandCategories ;
 int ACLCountCategoryBitsForUser (TYPE_1__*,unsigned long*,unsigned long*,char*) ;
 int ACLGetUserCommandBit (TYPE_1__*,size_t) ;
 int ACLSetUser (TYPE_1__*,char*,int) ;
 int ACLSetUserCommandBit (TYPE_1__*,size_t,int) ;
 scalar_t__ ACLUserCanExecuteFutureCommands (TYPE_1__*) ;
 int LL_WARNING ;
 int * dictGetIterator (int ) ;
 struct redisCommand* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 scalar_t__ memcmp (int ,int ,int) ;
 char* sdscat (char*,char*) ;
 char* sdscatlen (char*,char*,int) ;
 char* sdscatsds (char*,char*) ;
 char* sdsempty () ;
 int sdsfree (char*) ;
 char* sdsnewlen (char*,int) ;
 int sdsrange (char*,int ,int) ;
 TYPE_2__ server ;
 int serverLog (int ,char*,char*) ;
 int serverPanic (char*) ;

sds ACLDescribeUserCommandRules(user *u) {
    sds rules = sdsempty();
    int additive;





    user fu = {0};
    user *fakeuser = &fu;
    if (ACLUserCanExecuteFutureCommands(u)) {
        additive = 0;
        rules = sdscat(rules,"+@all ");
        ACLSetUser(fakeuser,"+@all",-1);
    } else {
        additive = 1;
        rules = sdscat(rules,"-@all ");
        ACLSetUser(fakeuser,"-@all",-1);
    }





    for (int j = 0; ACLCommandCategories[j].flag != 0; j++) {
        unsigned long on, off;
        ACLCountCategoryBitsForUser(u,&on,&off,ACLCommandCategories[j].name);
        if ((additive && on > off) || (!additive && off > on)) {
            sds op = sdsnewlen(additive ? "+@" : "-@", 2);
            op = sdscat(op,ACLCommandCategories[j].name);
            ACLSetUser(fakeuser,op,-1);
            rules = sdscatsds(rules,op);
            rules = sdscatlen(rules," ",1);
            sdsfree(op);
        }
    }


    dictIterator *di = dictGetIterator(server.orig_commands);
    dictEntry *de;
    while ((de = dictNext(di)) != ((void*)0)) {
        struct redisCommand *cmd = dictGetVal(de);
        int userbit = ACLGetUserCommandBit(u,cmd->id);
        int fakebit = ACLGetUserCommandBit(fakeuser,cmd->id);
        if (userbit != fakebit) {
            rules = sdscatlen(rules, userbit ? "+" : "-", 1);
            rules = sdscat(rules,cmd->name);
            rules = sdscatlen(rules," ",1);
            ACLSetUserCommandBit(fakeuser,cmd->id,userbit);
        }


        if (userbit == 0 && u->allowed_subcommands &&
            u->allowed_subcommands[cmd->id])
        {
            for (int j = 0; u->allowed_subcommands[cmd->id][j]; j++) {
                rules = sdscatlen(rules,"+",1);
                rules = sdscat(rules,cmd->name);
                rules = sdscatlen(rules,"|",1);
                rules = sdscatsds(rules,u->allowed_subcommands[cmd->id][j]);
                rules = sdscatlen(rules," ",1);
            }
        }
    }
    dictReleaseIterator(di);


    sdsrange(rules,0,-2);





    if (memcmp(fakeuser->allowed_commands,
                        u->allowed_commands,
                        sizeof(u->allowed_commands)) != 0)
    {
        serverLog(LL_WARNING,
            "CRITICAL ERROR: User ACLs don't match final bitmap: '%s'",
            rules);
        serverPanic("No bitmap match in ACLDescribeUserCommandRules()");
    }
    return rules;
}
