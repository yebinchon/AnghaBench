
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct redisCommand {scalar_t__ proc; } ;
typedef int seldb ;
typedef scalar_t__ sds ;
struct TYPE_9__ {int ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_10__ {int aof_selected_db; scalar_t__ aof_state; int aof_child_pid; int aof_buf; struct redisCommand* pexpireCommand; struct redisCommand* expireCommand; } ;


 scalar_t__ AOF_ON ;
 int aofRewriteBufferAppend (unsigned char*,int ) ;
 scalar_t__ catAppendOnlyExpireAtCommand (scalar_t__,struct redisCommand*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ catAppendOnlyGenericCommand (scalar_t__,int,TYPE_1__**) ;
 TYPE_1__* createStringObject (char*,int) ;
 int decrRefCount (TYPE_1__*) ;
 scalar_t__ expireCommand ;
 scalar_t__ expireatCommand ;
 scalar_t__ pexpireCommand ;
 scalar_t__ psetexCommand ;
 int sdscatlen (int ,scalar_t__,int ) ;
 scalar_t__ sdscatprintf (scalar_t__,char*,unsigned long,char*) ;
 scalar_t__ sdsempty () ;
 int sdsfree (scalar_t__) ;
 int sdslen (scalar_t__) ;
 TYPE_2__ server ;
 int serverAssert (int) ;
 scalar_t__ setCommand ;
 scalar_t__ setexCommand ;
 int snprintf (char*,int,char*,int) ;
 int strcasecmp (int ,char*) ;
 scalar_t__ strlen (char*) ;

void feedAppendOnlyFile(struct redisCommand *cmd, int dictid, robj **argv, int argc) {
    sds buf = sdsempty();
    robj *tmpargv[3];



    if (dictid != server.aof_selected_db) {
        char seldb[64];

        snprintf(seldb,sizeof(seldb),"%d",dictid);
        buf = sdscatprintf(buf,"*2\r\n$6\r\nSELECT\r\n$%lu\r\n%s\r\n",
            (unsigned long)strlen(seldb),seldb);
        server.aof_selected_db = dictid;
    }

    if (cmd->proc == expireCommand || cmd->proc == pexpireCommand ||
        cmd->proc == expireatCommand) {

        buf = catAppendOnlyExpireAtCommand(buf,cmd,argv[1],argv[2]);
    } else if (cmd->proc == setexCommand || cmd->proc == psetexCommand) {

        tmpargv[0] = createStringObject("SET",3);
        tmpargv[1] = argv[1];
        tmpargv[2] = argv[3];
        buf = catAppendOnlyGenericCommand(buf,3,tmpargv);
        decrRefCount(tmpargv[0]);
        buf = catAppendOnlyExpireAtCommand(buf,cmd,argv[1],argv[2]);
    } else if (cmd->proc == setCommand && argc > 3) {
        int i;
        robj *exarg = ((void*)0), *pxarg = ((void*)0);

        buf = catAppendOnlyGenericCommand(buf,3,argv);
        for (i = 3; i < argc; i ++) {
            if (!strcasecmp(argv[i]->ptr, "ex")) exarg = argv[i+1];
            if (!strcasecmp(argv[i]->ptr, "px")) pxarg = argv[i+1];
        }
        serverAssert(!(exarg && pxarg));
        if (exarg)
            buf = catAppendOnlyExpireAtCommand(buf,server.expireCommand,argv[1],
                                               exarg);
        if (pxarg)
            buf = catAppendOnlyExpireAtCommand(buf,server.pexpireCommand,argv[1],
                                               pxarg);
    } else {



        buf = catAppendOnlyGenericCommand(buf,argc,argv);
    }




    if (server.aof_state == AOF_ON)
        server.aof_buf = sdscatlen(server.aof_buf,buf,sdslen(buf));





    if (server.aof_child_pid != -1)
        aofRewriteBufferAppend((unsigned char*)buf,sdslen(buf));

    sdsfree(buf);
}
