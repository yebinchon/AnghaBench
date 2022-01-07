
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redisCommand {int flags; int keystep; int lastkey; int firstkey; scalar_t__ getkeys_proc; int arity; int name; } ;
typedef int client ;


 int CMD_ADMIN ;
 int CMD_ASKING ;
 int CMD_DENYOOM ;
 int CMD_FAST ;
 int CMD_LOADING ;
 int CMD_MODULE ;
 int CMD_MODULE_GETKEYS ;
 int CMD_NOSCRIPT ;
 int CMD_PUBSUB ;
 int CMD_RANDOM ;
 int CMD_READONLY ;
 int CMD_SKIP_MONITOR ;
 int CMD_SKIP_SLOWLOG ;
 int CMD_SORT_FOR_SCRIPT ;
 int CMD_STALE ;
 int CMD_WRITE ;
 int addReplyArrayLen (int *,int) ;
 int addReplyBulkCString (int *,int ) ;
 int addReplyCommandCategories (int *,struct redisCommand*) ;
 scalar_t__ addReplyCommandFlag (int *,struct redisCommand*,int ,char*) ;
 void* addReplyDeferredLen (int *) ;
 int addReplyLongLong (int *,int ) ;
 int addReplyNull (int *) ;
 int addReplyStatus (int *,char*) ;
 int setDeferredSetLen (int *,void*,int) ;

void addReplyCommand(client *c, struct redisCommand *cmd) {
    if (!cmd) {
        addReplyNull(c);
    } else {

        addReplyArrayLen(c, 7);
        addReplyBulkCString(c, cmd->name);
        addReplyLongLong(c, cmd->arity);

        int flagcount = 0;
        void *flaglen = addReplyDeferredLen(c);
        flagcount += addReplyCommandFlag(c,cmd,CMD_WRITE, "write");
        flagcount += addReplyCommandFlag(c,cmd,CMD_READONLY, "readonly");
        flagcount += addReplyCommandFlag(c,cmd,CMD_DENYOOM, "denyoom");
        flagcount += addReplyCommandFlag(c,cmd,CMD_ADMIN, "admin");
        flagcount += addReplyCommandFlag(c,cmd,CMD_PUBSUB, "pubsub");
        flagcount += addReplyCommandFlag(c,cmd,CMD_NOSCRIPT, "noscript");
        flagcount += addReplyCommandFlag(c,cmd,CMD_RANDOM, "random");
        flagcount += addReplyCommandFlag(c,cmd,CMD_SORT_FOR_SCRIPT,"sort_for_script");
        flagcount += addReplyCommandFlag(c,cmd,CMD_LOADING, "loading");
        flagcount += addReplyCommandFlag(c,cmd,CMD_STALE, "stale");
        flagcount += addReplyCommandFlag(c,cmd,CMD_SKIP_MONITOR, "skip_monitor");
        flagcount += addReplyCommandFlag(c,cmd,CMD_SKIP_SLOWLOG, "skip_slowlog");
        flagcount += addReplyCommandFlag(c,cmd,CMD_ASKING, "asking");
        flagcount += addReplyCommandFlag(c,cmd,CMD_FAST, "fast");
        if ((cmd->getkeys_proc && !(cmd->flags & CMD_MODULE)) ||
            cmd->flags & CMD_MODULE_GETKEYS)
        {
            addReplyStatus(c, "movablekeys");
            flagcount += 1;
        }
        setDeferredSetLen(c, flaglen, flagcount);

        addReplyLongLong(c, cmd->firstkey);
        addReplyLongLong(c, cmd->lastkey);
        addReplyLongLong(c, cmd->keystep);

        addReplyCommandCategories(c,cmd);
    }
}
