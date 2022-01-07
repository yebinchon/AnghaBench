
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_20__ {int argc; int cname; int peerid; int * argv; int duration; int time; int id; } ;
typedef TYPE_1__ slowlogEntry ;
struct TYPE_21__ {TYPE_1__* value; } ;
typedef TYPE_2__ listNode ;
typedef int listIter ;
struct TYPE_22__ {int argc; TYPE_10__** argv; } ;
typedef TYPE_3__ client ;
struct TYPE_24__ {int slowlog; } ;
struct TYPE_23__ {int ok; } ;
struct TYPE_19__ {int ptr; } ;


 scalar_t__ C_OK ;
 int addReply (TYPE_3__*,int ) ;
 int addReplyArrayLen (TYPE_3__*,int) ;
 int addReplyBulk (TYPE_3__*,int ) ;
 int addReplyBulkCBuffer (TYPE_3__*,int ,int ) ;
 void* addReplyDeferredLen (TYPE_3__*) ;
 int addReplyHelp (TYPE_3__*,char const**) ;
 int addReplyLongLong (TYPE_3__*,int ) ;
 int addReplySubcommandSyntaxError (TYPE_3__*) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_3__*,TYPE_10__*,long*,int *) ;
 int listLength (int ) ;
 TYPE_2__* listNext (int *) ;
 int listRewind (int ,int *) ;
 int sdslen (int ) ;
 TYPE_7__ server ;
 int setDeferredArrayLen (TYPE_3__*,void*,long) ;
 TYPE_5__ shared ;
 int slowlogReset () ;
 int strcasecmp (int ,char*) ;

void slowlogCommand(client *c) {
    if (c->argc == 2 && !strcasecmp(c->argv[1]->ptr,"help")) {
        const char *help[] = {
"GET [count] -- Return top entries from the slowlog (default: 10)."
"    Entries are made of:",
"    id, timestamp, time in microseconds, arguments array, client IP and port, client name",
"LEN -- Return the length of the slowlog.",
"RESET -- Reset the slowlog.",
((void*)0)
        };
        addReplyHelp(c, help);
    } else if (c->argc == 2 && !strcasecmp(c->argv[1]->ptr,"reset")) {
        slowlogReset();
        addReply(c,shared.ok);
    } else if (c->argc == 2 && !strcasecmp(c->argv[1]->ptr,"len")) {
        addReplyLongLong(c,listLength(server.slowlog));
    } else if ((c->argc == 2 || c->argc == 3) &&
               !strcasecmp(c->argv[1]->ptr,"get"))
    {
        long count = 10, sent = 0;
        listIter li;
        void *totentries;
        listNode *ln;
        slowlogEntry *se;

        if (c->argc == 3 &&
            getLongFromObjectOrReply(c,c->argv[2],&count,((void*)0)) != C_OK)
            return;

        listRewind(server.slowlog,&li);
        totentries = addReplyDeferredLen(c);
        while(count-- && (ln = listNext(&li))) {
            int j;

            se = ln->value;
            addReplyArrayLen(c,6);
            addReplyLongLong(c,se->id);
            addReplyLongLong(c,se->time);
            addReplyLongLong(c,se->duration);
            addReplyArrayLen(c,se->argc);
            for (j = 0; j < se->argc; j++)
                addReplyBulk(c,se->argv[j]);
            addReplyBulkCBuffer(c,se->peerid,sdslen(se->peerid));
            addReplyBulkCBuffer(c,se->cname,sdslen(se->cname));
            sent++;
        }
        setDeferredArrayLen(c,totentries,sent);
    } else {
        addReplySubcommandSyntaxError(c);
    }
}
