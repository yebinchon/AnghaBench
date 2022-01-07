
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_25__ {char* ptr; scalar_t__ type; } ;
typedef TYPE_1__ robj ;
struct TYPE_26__ {int argc; TYPE_5__* db; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_29__ {scalar_t__ zset_max_ziplist_entries; scalar_t__ zset_max_ziplist_value; int dirty; } ;
struct TYPE_28__ {int wrongtypeerr; int syntaxerr; } ;
struct TYPE_27__ {int id; } ;


 scalar_t__ C_OK ;
 int NOTIFY_ZSET ;
 scalar_t__ OBJ_ZSET ;
 int ZADD_ADDED ;
 int ZADD_CH ;
 int ZADD_INCR ;
 int ZADD_NOP ;
 int ZADD_NX ;
 int ZADD_UPDATED ;
 int ZADD_XX ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyDouble (TYPE_2__*,double) ;
 int addReplyError (TYPE_2__*,char*) ;
 int addReplyLongLong (TYPE_2__*,int) ;
 int addReplyNull (TYPE_2__*) ;
 TYPE_1__* createZsetObject () ;
 TYPE_1__* createZsetZiplistObject () ;
 int dbAdd (TYPE_5__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ getDoubleFromObjectOrReply (TYPE_2__*,TYPE_1__*,double*,int *) ;
 TYPE_1__* lookupKeyWrite (TYPE_5__*,TYPE_1__*) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_1__*,int ) ;
 scalar_t__ sdslen (char*) ;
 TYPE_8__ server ;
 TYPE_7__ shared ;
 int signalModifiedKey (TYPE_5__*,TYPE_1__*) ;
 int strcasecmp (char*,char*) ;
 int zfree (double*) ;
 double* zmalloc (int) ;
 int zsetAdd (TYPE_1__*,double,char*,int*,double*) ;

void zaddGenericCommand(client *c, int flags) {
    static char *nanerr = "resulting score is not a number (NaN)";
    robj *key = c->argv[1];
    robj *zobj;
    sds ele;
    double score = 0, *scores = ((void*)0);
    int j, elements;
    int scoreidx = 0;



    int added = 0;
    int updated = 0;
    int processed = 0;




    scoreidx = 2;
    while(scoreidx < c->argc) {
        char *opt = c->argv[scoreidx]->ptr;
        if (!strcasecmp(opt,"nx")) flags |= ZADD_NX;
        else if (!strcasecmp(opt,"xx")) flags |= ZADD_XX;
        else if (!strcasecmp(opt,"ch")) flags |= ZADD_CH;
        else if (!strcasecmp(opt,"incr")) flags |= ZADD_INCR;
        else break;
        scoreidx++;
    }


    int incr = (flags & ZADD_INCR) != 0;
    int nx = (flags & ZADD_NX) != 0;
    int xx = (flags & ZADD_XX) != 0;
    int ch = (flags & ZADD_CH) != 0;



    elements = c->argc-scoreidx;
    if (elements % 2 || !elements) {
        addReply(c,shared.syntaxerr);
        return;
    }
    elements /= 2;


    if (nx && xx) {
        addReplyError(c,
            "XX and NX options at the same time are not compatible");
        return;
    }

    if (incr && elements > 1) {
        addReplyError(c,
            "INCR option supports a single increment-element pair");
        return;
    }




    scores = zmalloc(sizeof(double)*elements);
    for (j = 0; j < elements; j++) {
        if (getDoubleFromObjectOrReply(c,c->argv[scoreidx+j*2],&scores[j],((void*)0))
            != C_OK) goto cleanup;
    }


    zobj = lookupKeyWrite(c->db,key);
    if (zobj == ((void*)0)) {
        if (xx) goto reply_to_client;
        if (server.zset_max_ziplist_entries == 0 ||
            server.zset_max_ziplist_value < sdslen(c->argv[scoreidx+1]->ptr))
        {
            zobj = createZsetObject();
        } else {
            zobj = createZsetZiplistObject();
        }
        dbAdd(c->db,key,zobj);
    } else {
        if (zobj->type != OBJ_ZSET) {
            addReply(c,shared.wrongtypeerr);
            goto cleanup;
        }
    }

    for (j = 0; j < elements; j++) {
        double newscore;
        score = scores[j];
        int retflags = flags;

        ele = c->argv[scoreidx+1+j*2]->ptr;
        int retval = zsetAdd(zobj, score, ele, &retflags, &newscore);
        if (retval == 0) {
            addReplyError(c,nanerr);
            goto cleanup;
        }
        if (retflags & ZADD_ADDED) added++;
        if (retflags & ZADD_UPDATED) updated++;
        if (!(retflags & ZADD_NOP)) processed++;
        score = newscore;
    }
    server.dirty += (added+updated);

reply_to_client:
    if (incr) {
        if (processed)
            addReplyDouble(c,score);
        else
            addReplyNull(c);
    } else {
        addReplyLongLong(c,ch ? added+updated : added);
    }

cleanup:
    zfree(scores);
    if (added || updated) {
        signalModifiedKey(c->db,key);
        notifyKeyspaceEvent(NOTIFY_ZSET,
            incr ? "zincr" : "zadd", key, c->db->id);
    }
}
