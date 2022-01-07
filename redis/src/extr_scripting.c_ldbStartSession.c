
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;
typedef char* sds ;
typedef int pid_t ;
struct TYPE_8__ {int flags; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_9__ {int forked; int active; int lines; int src; int conn; int children; } ;
struct TYPE_7__ {int ptr; } ;


 int CLIENT_LUA_DEBUG_SYNC ;
 int LL_WARNING ;
 int SIGINT ;
 int SIGTERM ;
 int SIG_IGN ;
 int addReplyError (TYPE_2__*,char*) ;
 int connBlock (int ) ;
 int connSendTimeout (int ,int) ;
 int freeClientAsync (TYPE_2__*) ;
 TYPE_4__ ldb ;
 int listAddNodeTail (int ,void*) ;
 int redisFork () ;
 char* sdsdup (int ) ;
 int sdsfree (char*) ;
 size_t sdslen (char*) ;
 int sdssetlen (char*,size_t) ;
 int sdssplitlen (char*,size_t,char*,int,int *) ;
 int serverLog (int ,char*) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

int ldbStartSession(client *c) {
    ldb.forked = (c->flags & CLIENT_LUA_DEBUG_SYNC) == 0;
    if (ldb.forked) {
        pid_t cp = redisFork();
        if (cp == -1) {
            addReplyError(c,"Fork() failed: can't run EVAL in debugging mode.");
            return 0;
        } else if (cp == 0) {

            struct sigaction act;
            sigemptyset(&act.sa_mask);
            act.sa_flags = 0;
            act.sa_handler = SIG_IGN;
            sigaction(SIGTERM, &act, ((void*)0));
            sigaction(SIGINT, &act, ((void*)0));




            serverLog(LL_WARNING,"Redis forked for debugging eval");
        } else {

            listAddNodeTail(ldb.children,(void*)(unsigned long)cp);
            freeClientAsync(c);
            return 0;
        }
    } else {
        serverLog(LL_WARNING,
            "Redis synchronous debugging eval session started");
    }


    connBlock(ldb.conn);
    connSendTimeout(ldb.conn,5000);
    ldb.active = 1;



    sds srcstring = sdsdup(c->argv[1]->ptr);
    size_t srclen = sdslen(srcstring);
    while(srclen && (srcstring[srclen-1] == '\n' ||
                     srcstring[srclen-1] == '\r'))
    {
        srcstring[--srclen] = '\0';
    }
    sdssetlen(srcstring,srclen);
    ldb.src = sdssplitlen(srcstring,sdslen(srcstring),"\n",1,&ldb.lines);
    sdsfree(srcstring);
    return 1;
}
