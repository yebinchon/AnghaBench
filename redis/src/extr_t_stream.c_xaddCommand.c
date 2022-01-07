
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_15__ ;
typedef struct TYPE_25__ TYPE_11__ ;


typedef int streamID ;
typedef int stream ;
struct TYPE_27__ {int * ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_28__ {int argc; TYPE_6__** argv; TYPE_11__* db; } ;
typedef TYPE_2__ client ;
struct TYPE_29__ {char* ptr; } ;
struct TYPE_26__ {scalar_t__* blocked_clients_by_type; int dirty; } ;
struct TYPE_25__ {int id; } ;


 size_t BLOCKED_STREAM ;
 scalar_t__ C_ERR ;
 scalar_t__ C_OK ;
 int NOTIFY_STREAM ;
 int addReplyError (TYPE_2__*,char*) ;
 int addReplyStreamID (TYPE_2__*,int *) ;
 TYPE_1__* createObjectFromStreamID (int *) ;
 int decrRefCount (TYPE_1__*) ;
 scalar_t__ getLongLongFromObjectOrReply (TYPE_2__*,TYPE_6__*,long long*,int *) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_6__*,int ) ;
 int rewriteClientCommandArgument (TYPE_2__*,int,TYPE_1__*) ;
 TYPE_15__ server ;
 int signalKeyAsReady (TYPE_11__*,TYPE_6__*) ;
 int signalModifiedKey (TYPE_11__*,TYPE_6__*) ;
 int strcasecmp (char*,char*) ;
 scalar_t__ streamAppendItem (int *,TYPE_6__**,int,int *,int *) ;
 scalar_t__ streamParseStrictIDOrReply (TYPE_2__*,TYPE_6__*,int *,int ) ;
 int streamRewriteApproxMaxlen (TYPE_2__*,int *,int) ;
 scalar_t__ streamTrimByLength (int *,long long,int) ;
 TYPE_1__* streamTypeLookupWriteOrCreate (TYPE_2__*,TYPE_6__*) ;

void xaddCommand(client *c) {
    streamID id;
    int id_given = 0;
    long long maxlen = -1;
    int approx_maxlen = 0;

    int maxlen_arg_idx = 0;


    int i = 2;

    for (; i < c->argc; i++) {
        int moreargs = (c->argc-1) - i;
        char *opt = c->argv[i]->ptr;
        if (opt[0] == '*' && opt[1] == '\0') {


            break;
        } else if (!strcasecmp(opt,"maxlen") && moreargs) {
            approx_maxlen = 0;
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

            if (streamParseStrictIDOrReply(c,c->argv[i],&id,0) != C_OK) return;
            id_given = 1;
            break;
        }
    }
    int field_pos = i+1;


    if ((c->argc - field_pos) < 2 || ((c->argc-field_pos) % 2) == 1) {
        addReplyError(c,"wrong number of arguments for XADD");
        return;
    }


    robj *o;
    stream *s;
    if ((o = streamTypeLookupWriteOrCreate(c,c->argv[1])) == ((void*)0)) return;
    s = o->ptr;


    if (streamAppendItem(s,c->argv+field_pos,(c->argc-field_pos)/2,
        &id, id_given ? &id : ((void*)0))
        == C_ERR)
    {
        addReplyError(c,"The ID specified in XADD is equal or smaller than the "
                        "target stream top item");
        return;
    }
    addReplyStreamID(c,&id);

    signalModifiedKey(c->db,c->argv[1]);
    notifyKeyspaceEvent(NOTIFY_STREAM,"xadd",c->argv[1],c->db->id);
    server.dirty++;

    if (maxlen >= 0) {

        if (streamTrimByLength(s,maxlen,approx_maxlen)) {
            notifyKeyspaceEvent(NOTIFY_STREAM,"xtrim",c->argv[1],c->db->id);
        }
        if (approx_maxlen) streamRewriteApproxMaxlen(c,s,maxlen_arg_idx);
    }



    robj *idarg = createObjectFromStreamID(&id);
    rewriteClientCommandArgument(c,i,idarg);
    decrRefCount(idarg);



    if (server.blocked_clients_by_type[BLOCKED_STREAM])
        signalKeyAsReady(c->db, c->argv[1]);
}
