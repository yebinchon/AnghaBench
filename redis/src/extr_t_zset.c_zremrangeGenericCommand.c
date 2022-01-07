
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_20__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_19__ ;
typedef struct TYPE_34__ TYPE_17__ ;


struct TYPE_36__ {int dict; int zsl; } ;
typedef TYPE_1__ zset ;
typedef int zrangespec ;
typedef int zlexrangespec ;
struct TYPE_38__ {scalar_t__ encoding; TYPE_1__* ptr; } ;
typedef TYPE_2__ robj ;
struct TYPE_39__ {TYPE_17__* db; TYPE_2__** argv; } ;
typedef TYPE_3__ client ;
struct TYPE_37__ {unsigned long dirty; } ;
struct TYPE_35__ {int czero; } ;
struct TYPE_34__ {int id; } ;


 scalar_t__ C_OK ;
 int NOTIFY_GENERIC ;
 int NOTIFY_ZSET ;
 scalar_t__ OBJ_ENCODING_SKIPLIST ;
 scalar_t__ OBJ_ENCODING_ZIPLIST ;
 int OBJ_ZSET ;



 int addReply (TYPE_3__*,int ) ;
 int addReplyError (TYPE_3__*,char*) ;
 int addReplyLongLong (TYPE_3__*,unsigned long) ;
 scalar_t__ checkType (TYPE_3__*,TYPE_2__*,int ) ;
 int dbDelete (TYPE_17__*,TYPE_2__*) ;
 int dictResize (int ) ;
 scalar_t__ dictSize (int ) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_3__*,TYPE_2__*,long*,int *) ;
 scalar_t__ htNeedsResize (int ) ;
 TYPE_2__* lookupKeyWriteOrReply (TYPE_3__*,TYPE_2__*,int ) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_2__*,int ) ;
 TYPE_20__ server ;
 int serverPanic (char*) ;
 TYPE_19__ shared ;
 int signalModifiedKey (TYPE_17__*,TYPE_2__*) ;
 long zsetLength (TYPE_2__*) ;
 unsigned long zslDeleteRangeByLex (int ,int *,int ) ;
 unsigned long zslDeleteRangeByRank (int ,long,long,int ) ;
 unsigned long zslDeleteRangeByScore (int ,int *,int ) ;
 int zslFreeLexRange (int *) ;
 scalar_t__ zslParseLexRange (TYPE_2__*,TYPE_2__*,int *) ;
 scalar_t__ zslParseRange (TYPE_2__*,TYPE_2__*,int *) ;
 TYPE_1__* zzlDeleteRangeByLex (TYPE_1__*,int *,unsigned long*) ;
 TYPE_1__* zzlDeleteRangeByRank (TYPE_1__*,long,long,unsigned long*) ;
 TYPE_1__* zzlDeleteRangeByScore (TYPE_1__*,int *,unsigned long*) ;
 scalar_t__ zzlLength (TYPE_1__*) ;

void zremrangeGenericCommand(client *c, int rangetype) {
    robj *key = c->argv[1];
    robj *zobj;
    int keyremoved = 0;
    unsigned long deleted = 0;
    zrangespec range;
    zlexrangespec lexrange;
    long start, end, llen;


    if (rangetype == 129) {
        if ((getLongFromObjectOrReply(c,c->argv[2],&start,((void*)0)) != C_OK) ||
            (getLongFromObjectOrReply(c,c->argv[3],&end,((void*)0)) != C_OK))
            return;
    } else if (rangetype == 128) {
        if (zslParseRange(c->argv[2],c->argv[3],&range) != C_OK) {
            addReplyError(c,"min or max is not a float");
            return;
        }
    } else if (rangetype == 130) {
        if (zslParseLexRange(c->argv[2],c->argv[3],&lexrange) != C_OK) {
            addReplyError(c,"min or max not valid string range item");
            return;
        }
    }


    if ((zobj = lookupKeyWriteOrReply(c,key,shared.czero)) == ((void*)0) ||
        checkType(c,zobj,OBJ_ZSET)) goto cleanup;

    if (rangetype == 129) {

        llen = zsetLength(zobj);
        if (start < 0) start = llen+start;
        if (end < 0) end = llen+end;
        if (start < 0) start = 0;



        if (start > end || start >= llen) {
            addReply(c,shared.czero);
            goto cleanup;
        }
        if (end >= llen) end = llen-1;
    }


    if (zobj->encoding == OBJ_ENCODING_ZIPLIST) {
        switch(rangetype) {
        case 129:
            zobj->ptr = zzlDeleteRangeByRank(zobj->ptr,start+1,end+1,&deleted);
            break;
        case 128:
            zobj->ptr = zzlDeleteRangeByScore(zobj->ptr,&range,&deleted);
            break;
        case 130:
            zobj->ptr = zzlDeleteRangeByLex(zobj->ptr,&lexrange,&deleted);
            break;
        }
        if (zzlLength(zobj->ptr) == 0) {
            dbDelete(c->db,key);
            keyremoved = 1;
        }
    } else if (zobj->encoding == OBJ_ENCODING_SKIPLIST) {
        zset *zs = zobj->ptr;
        switch(rangetype) {
        case 129:
            deleted = zslDeleteRangeByRank(zs->zsl,start+1,end+1,zs->dict);
            break;
        case 128:
            deleted = zslDeleteRangeByScore(zs->zsl,&range,zs->dict);
            break;
        case 130:
            deleted = zslDeleteRangeByLex(zs->zsl,&lexrange,zs->dict);
            break;
        }
        if (htNeedsResize(zs->dict)) dictResize(zs->dict);
        if (dictSize(zs->dict) == 0) {
            dbDelete(c->db,key);
            keyremoved = 1;
        }
    } else {
        serverPanic("Unknown sorted set encoding");
    }


    if (deleted) {
        char *event[3] = {"zremrangebyrank","zremrangebyscore","zremrangebylex"};
        signalModifiedKey(c->db,key);
        notifyKeyspaceEvent(NOTIFY_ZSET,event[rangetype],key,c->db->id);
        if (keyremoved)
            notifyKeyspaceEvent(NOTIFY_GENERIC,"del",key,c->db->id);
    }
    server.dirty += deleted;
    addReplyLongLong(c,deleted);

cleanup:
    if (rangetype == 130) zslFreeLexRange(&lexrange);
}
