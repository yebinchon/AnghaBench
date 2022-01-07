
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int * sds ;
struct TYPE_15__ {int * ptr; } ;
typedef TYPE_1__ robj ;
typedef int list ;
typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_16__ {int argc; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_17__ {int * pubsub_patterns; int pubsub_channels; } ;


 int addReplyArrayLen (TYPE_2__*,int) ;
 int addReplyBulk (TYPE_2__*,TYPE_1__*) ;
 void* addReplyDeferredLen (TYPE_2__*) ;
 int addReplyHelp (TYPE_2__*,char const**) ;
 int addReplyLongLong (TYPE_2__*,int ) ;
 int addReplySubcommandSyntaxError (TYPE_2__*) ;
 int * dictFetchValue (int ,TYPE_1__*) ;
 int * dictGetIterator (int ) ;
 TYPE_1__* dictGetKey (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int listLength (int *) ;
 int sdslen (int *) ;
 TYPE_4__ server ;
 int setDeferredArrayLen (TYPE_2__*,void*,long) ;
 int strcasecmp (int *,char*) ;
 scalar_t__ stringmatchlen (int *,int ,int *,int ,int ) ;

void pubsubCommand(client *c) {
    if (c->argc == 2 && !strcasecmp(c->argv[1]->ptr,"help")) {
        const char *help[] = {
"CHANNELS [<pattern>] -- Return the currently active channels matching a pattern (default: all).",
"NUMPAT -- Return number of subscriptions to patterns.",
"NUMSUB [channel-1 .. channel-N] -- Returns the number of subscribers for the specified channels (excluding patterns, default: none).",
((void*)0)
        };
        addReplyHelp(c, help);
    } else if (!strcasecmp(c->argv[1]->ptr,"channels") &&
        (c->argc == 2 || c->argc == 3))
    {

        sds pat = (c->argc == 2) ? ((void*)0) : c->argv[2]->ptr;
        dictIterator *di = dictGetIterator(server.pubsub_channels);
        dictEntry *de;
        long mblen = 0;
        void *replylen;

        replylen = addReplyDeferredLen(c);
        while((de = dictNext(di)) != ((void*)0)) {
            robj *cobj = dictGetKey(de);
            sds channel = cobj->ptr;

            if (!pat || stringmatchlen(pat, sdslen(pat),
                                       channel, sdslen(channel),0))
            {
                addReplyBulk(c,cobj);
                mblen++;
            }
        }
        dictReleaseIterator(di);
        setDeferredArrayLen(c,replylen,mblen);
    } else if (!strcasecmp(c->argv[1]->ptr,"numsub") && c->argc >= 2) {

        int j;

        addReplyArrayLen(c,(c->argc-2)*2);
        for (j = 2; j < c->argc; j++) {
            list *l = dictFetchValue(server.pubsub_channels,c->argv[j]);

            addReplyBulk(c,c->argv[j]);
            addReplyLongLong(c,l ? listLength(l) : 0);
        }
    } else if (!strcasecmp(c->argv[1]->ptr,"numpat") && c->argc == 2) {

        addReplyLongLong(c,listLength(server.pubsub_patterns));
    } else {
        addReplySubcommandSyntaxError(c);
    }
}
