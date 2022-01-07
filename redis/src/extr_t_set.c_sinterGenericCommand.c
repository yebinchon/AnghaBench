
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_43__ TYPE_8__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_1__ ;
typedef struct TYPE_40__ TYPE_16__ ;
typedef struct TYPE_39__ TYPE_10__ ;


typedef int setTypeIterator ;
typedef int sds ;
struct TYPE_41__ {int encoding; scalar_t__ ptr; } ;
typedef TYPE_1__ robj ;
typedef int intset ;
typedef int int64_t ;
struct TYPE_42__ {size_t resp; TYPE_8__* db; } ;
typedef TYPE_2__ client ;
struct TYPE_43__ {int id; } ;
struct TYPE_40__ {int dirty; } ;
struct TYPE_39__ {int czero; int * emptyset; } ;


 int NOTIFY_GENERIC ;
 int NOTIFY_SET ;
 int OBJ_ENCODING_HT ;
 int OBJ_ENCODING_INTSET ;
 int OBJ_SET ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyBulkCBuffer (TYPE_2__*,int ,int ) ;
 int addReplyBulkLongLong (TYPE_2__*,int ) ;
 void* addReplyDeferredLen (TYPE_2__*) ;
 int addReplyLongLong (TYPE_2__*,scalar_t__) ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 TYPE_1__* createIntsetObject () ;
 int dbAdd (TYPE_8__*,TYPE_1__*,TYPE_1__*) ;
 int dbDelete (TYPE_8__*,TYPE_1__*) ;
 int decrRefCount (TYPE_1__*) ;
 int intsetFind (int *,int ) ;
 TYPE_1__* lookupKeyRead (TYPE_8__*,TYPE_1__*) ;
 TYPE_1__* lookupKeyWrite (TYPE_8__*,TYPE_1__*) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_1__*,int ) ;
 int qsort (TYPE_1__**,unsigned long,int,int ) ;
 int qsortCompareSetsByCardinality ;
 int sdsfree (int ) ;
 int sdsfromlonglong (int ) ;
 int sdslen (int ) ;
 TYPE_16__ server ;
 int setDeferredSetLen (TYPE_2__*,void*,unsigned long) ;
 int setTypeAdd (TYPE_1__*,int ) ;
 int * setTypeInitIterator (TYPE_1__*) ;
 int setTypeIsMember (TYPE_1__*,int ) ;
 int setTypeNext (int *,int *,int *) ;
 int setTypeReleaseIterator (int *) ;
 scalar_t__ setTypeSize (TYPE_1__*) ;
 TYPE_10__ shared ;
 int signalModifiedKey (TYPE_8__*,TYPE_1__*) ;
 int zfree (TYPE_1__**) ;
 TYPE_1__** zmalloc (int) ;

void sinterGenericCommand(client *c, robj **setkeys,
                          unsigned long setnum, robj *dstkey) {
    robj **sets = zmalloc(sizeof(robj*)*setnum);
    setTypeIterator *si;
    robj *dstset = ((void*)0);
    sds elesds;
    int64_t intobj;
    void *replylen = ((void*)0);
    unsigned long j, cardinality = 0;
    int encoding;

    for (j = 0; j < setnum; j++) {
        robj *setobj = dstkey ?
            lookupKeyWrite(c->db,setkeys[j]) :
            lookupKeyRead(c->db,setkeys[j]);
        if (!setobj) {
            zfree(sets);
            if (dstkey) {
                if (dbDelete(c->db,dstkey)) {
                    signalModifiedKey(c->db,dstkey);
                    server.dirty++;
                }
                addReply(c,shared.czero);
            } else {
                addReply(c,shared.emptyset[c->resp]);
            }
            return;
        }
        if (checkType(c,setobj,OBJ_SET)) {
            zfree(sets);
            return;
        }
        sets[j] = setobj;
    }


    qsort(sets,setnum,sizeof(robj*),qsortCompareSetsByCardinality);






    if (!dstkey) {
        replylen = addReplyDeferredLen(c);
    } else {


        dstset = createIntsetObject();
    }




    si = setTypeInitIterator(sets[0]);
    while((encoding = setTypeNext(si,&elesds,&intobj)) != -1) {
        for (j = 1; j < setnum; j++) {
            if (sets[j] == sets[0]) continue;
            if (encoding == OBJ_ENCODING_INTSET) {

                if (sets[j]->encoding == OBJ_ENCODING_INTSET &&
                    !intsetFind((intset*)sets[j]->ptr,intobj))
                {
                    break;



                } else if (sets[j]->encoding == OBJ_ENCODING_HT) {
                    elesds = sdsfromlonglong(intobj);
                    if (!setTypeIsMember(sets[j],elesds)) {
                        sdsfree(elesds);
                        break;
                    }
                    sdsfree(elesds);
                }
            } else if (encoding == OBJ_ENCODING_HT) {
                if (!setTypeIsMember(sets[j],elesds)) {
                    break;
                }
            }
        }


        if (j == setnum) {
            if (!dstkey) {
                if (encoding == OBJ_ENCODING_HT)
                    addReplyBulkCBuffer(c,elesds,sdslen(elesds));
                else
                    addReplyBulkLongLong(c,intobj);
                cardinality++;
            } else {
                if (encoding == OBJ_ENCODING_INTSET) {
                    elesds = sdsfromlonglong(intobj);
                    setTypeAdd(dstset,elesds);
                    sdsfree(elesds);
                } else {
                    setTypeAdd(dstset,elesds);
                }
            }
        }
    }
    setTypeReleaseIterator(si);

    if (dstkey) {


        int deleted = dbDelete(c->db,dstkey);
        if (setTypeSize(dstset) > 0) {
            dbAdd(c->db,dstkey,dstset);
            addReplyLongLong(c,setTypeSize(dstset));
            notifyKeyspaceEvent(NOTIFY_SET,"sinterstore",
                dstkey,c->db->id);
        } else {
            decrRefCount(dstset);
            addReply(c,shared.czero);
            if (deleted)
                notifyKeyspaceEvent(NOTIFY_GENERIC,"del",
                    dstkey,c->db->id);
        }
        signalModifiedKey(c->db,dstkey);
        server.dirty++;
    } else {
        setDeferredSetLen(c,replylen,cardinality);
    }
    zfree(sets);
}
