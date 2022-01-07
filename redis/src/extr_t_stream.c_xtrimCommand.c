
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int stream ;
struct TYPE_20__ {int * ptr; } ;
typedef TYPE_1__ robj ;
typedef scalar_t__ int64_t ;
struct TYPE_21__ {int argc; TYPE_5__* db; TYPE_6__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_25__ {int dirty; } ;
struct TYPE_24__ {int syntaxerr; int czero; } ;
struct TYPE_23__ {char* ptr; } ;
struct TYPE_22__ {int id; } ;


 scalar_t__ C_OK ;
 int NOTIFY_STREAM ;
 int OBJ_STREAM ;
 int TRIM_STRATEGY_MAXLEN ;
 int TRIM_STRATEGY_NONE ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyError (TYPE_2__*,char*) ;
 int addReplyLongLong (TYPE_2__*,scalar_t__) ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 scalar_t__ getLongLongFromObjectOrReply (TYPE_2__*,TYPE_6__*,long long*,int *) ;
 TYPE_1__* lookupKeyWriteOrReply (TYPE_2__*,TYPE_6__*,int ) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_6__*,int ) ;
 TYPE_8__ server ;
 TYPE_7__ shared ;
 int signalModifiedKey (TYPE_5__*,TYPE_6__*) ;
 int strcasecmp (char*,char*) ;
 int streamRewriteApproxMaxlen (TYPE_2__*,int *,int) ;
 scalar_t__ streamTrimByLength (int *,long long,int) ;

void xtrimCommand(client *c) {
    robj *o;



    if ((o = lookupKeyWriteOrReply(c,c->argv[1],shared.czero)) == ((void*)0)
        || checkType(c,o,OBJ_STREAM)) return;
    stream *s = o->ptr;


    int trim_strategy = TRIM_STRATEGY_NONE;
    long long maxlen = -1;
    int approx_maxlen = 0;

    int maxlen_arg_idx = 0;


    int i = 2;
    for (; i < c->argc; i++) {
        int moreargs = (c->argc-1) - i;
        char *opt = c->argv[i]->ptr;
        if (!strcasecmp(opt,"maxlen") && moreargs) {
            approx_maxlen = 0;
            trim_strategy = TRIM_STRATEGY_MAXLEN;
            char *next = c->argv[i+1]->ptr;

            if (moreargs >= 2 && next[0] == '~' && next[1] == '\0') {
                approx_maxlen = 1;
                i++;
            } else if (moreargs >= 2 && next[0] == '=' && next[1] == '\0') {
                i++;
            }
            if (getLongLongFromObjectOrReply(c,c->argv[i+1],&maxlen,((void*)0))
                != C_OK) return;

            if (maxlen < 0) {
                addReplyError(c,"The MAXLEN argument must be >= 0.");
                return;
            }
            i++;
            maxlen_arg_idx = i;
        } else {
            addReply(c,shared.syntaxerr);
            return;
        }
    }


    int64_t deleted = 0;
    if (trim_strategy == TRIM_STRATEGY_MAXLEN) {
        deleted = streamTrimByLength(s,maxlen,approx_maxlen);
    } else {
        addReplyError(c,"XTRIM called without an option to trim the stream");
        return;
    }


    if (deleted) {
        signalModifiedKey(c->db,c->argv[1]);
        notifyKeyspaceEvent(NOTIFY_STREAM,"xtrim",c->argv[1],c->db->id);
        server.dirty += deleted;
        if (approx_maxlen) streamRewriteApproxMaxlen(c,s,maxlen_arg_idx);
    }
    addReplyLongLong(c,deleted);
}
