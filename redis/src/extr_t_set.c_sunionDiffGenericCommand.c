
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int setTypeIterator ;
typedef int * sds ;
typedef int robj ;
struct TYPE_15__ {TYPE_3__* db; } ;
typedef TYPE_1__ client ;
struct TYPE_18__ {int dirty; scalar_t__ lazyfree_lazy_server_del; } ;
struct TYPE_17__ {int czero; } ;
struct TYPE_16__ {int id; } ;


 int NOTIFY_GENERIC ;
 int NOTIFY_SET ;
 int OBJ_SET ;
 int SET_OP_DIFF ;
 int SET_OP_UNION ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyBulkCBuffer (TYPE_1__*,int *,int ) ;
 int addReplyLongLong (TYPE_1__*,scalar_t__) ;
 int addReplySetLen (TYPE_1__*,int) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 int * createIntsetObject () ;
 int dbAdd (TYPE_3__*,int *,int *) ;
 int dbDelete (TYPE_3__*,int *) ;
 int decrRefCount (int *) ;
 int freeObjAsync (int *) ;
 int * lookupKeyRead (TYPE_3__*,int *) ;
 int * lookupKeyWrite (TYPE_3__*,int *) ;
 int notifyKeyspaceEvent (int ,char*,int *,int ) ;
 int qsort (int **,int,int,int ) ;
 int qsortCompareSetsByRevCardinality ;
 int sdsfree (int *) ;
 int sdslen (int *) ;
 TYPE_5__ server ;
 scalar_t__ setTypeAdd (int *,int *) ;
 int * setTypeInitIterator (int *) ;
 scalar_t__ setTypeIsMember (int *,int *) ;
 int * setTypeNextObject (int *) ;
 int setTypeReleaseIterator (int *) ;
 scalar_t__ setTypeRemove (int *,int *) ;
 scalar_t__ setTypeSize (int *) ;
 TYPE_4__ shared ;
 int signalModifiedKey (TYPE_3__*,int *) ;
 int zfree (int **) ;
 int ** zmalloc (int) ;

void sunionDiffGenericCommand(client *c, robj **setkeys, int setnum,
                              robj *dstkey, int op) {
    robj **sets = zmalloc(sizeof(robj*)*setnum);
    setTypeIterator *si;
    robj *dstset = ((void*)0);
    sds ele;
    int j, cardinality = 0;
    int diff_algo = 1;

    for (j = 0; j < setnum; j++) {
        robj *setobj = dstkey ?
            lookupKeyWrite(c->db,setkeys[j]) :
            lookupKeyRead(c->db,setkeys[j]);
        if (!setobj) {
            sets[j] = ((void*)0);
            continue;
        }
        if (checkType(c,setobj,OBJ_SET)) {
            zfree(sets);
            return;
        }
        sets[j] = setobj;
    }
    if (op == SET_OP_DIFF && sets[0]) {
        long long algo_one_work = 0, algo_two_work = 0;

        for (j = 0; j < setnum; j++) {
            if (sets[j] == ((void*)0)) continue;

            algo_one_work += setTypeSize(sets[0]);
            algo_two_work += setTypeSize(sets[j]);
        }



        algo_one_work /= 2;
        diff_algo = (algo_one_work <= algo_two_work) ? 1 : 2;

        if (diff_algo == 1 && setnum > 1) {



            qsort(sets+1,setnum-1,sizeof(robj*),
                qsortCompareSetsByRevCardinality);
        }
    }




    dstset = createIntsetObject();

    if (op == SET_OP_UNION) {


        for (j = 0; j < setnum; j++) {
            if (!sets[j]) continue;

            si = setTypeInitIterator(sets[j]);
            while((ele = setTypeNextObject(si)) != ((void*)0)) {
                if (setTypeAdd(dstset,ele)) cardinality++;
                sdsfree(ele);
            }
            setTypeReleaseIterator(si);
        }
    } else if (op == SET_OP_DIFF && sets[0] && diff_algo == 1) {
        si = setTypeInitIterator(sets[0]);
        while((ele = setTypeNextObject(si)) != ((void*)0)) {
            for (j = 1; j < setnum; j++) {
                if (!sets[j]) continue;
                if (sets[j] == sets[0]) break;
                if (setTypeIsMember(sets[j],ele)) break;
            }
            if (j == setnum) {

                setTypeAdd(dstset,ele);
                cardinality++;
            }
            sdsfree(ele);
        }
        setTypeReleaseIterator(si);
    } else if (op == SET_OP_DIFF && sets[0] && diff_algo == 2) {







        for (j = 0; j < setnum; j++) {
            if (!sets[j]) continue;

            si = setTypeInitIterator(sets[j]);
            while((ele = setTypeNextObject(si)) != ((void*)0)) {
                if (j == 0) {
                    if (setTypeAdd(dstset,ele)) cardinality++;
                } else {
                    if (setTypeRemove(dstset,ele)) cardinality--;
                }
                sdsfree(ele);
            }
            setTypeReleaseIterator(si);



            if (cardinality == 0) break;
        }
    }


    if (!dstkey) {
        addReplySetLen(c,cardinality);
        si = setTypeInitIterator(dstset);
        while((ele = setTypeNextObject(si)) != ((void*)0)) {
            addReplyBulkCBuffer(c,ele,sdslen(ele));
            sdsfree(ele);
        }
        setTypeReleaseIterator(si);
        server.lazyfree_lazy_server_del ? freeObjAsync(dstset) :
                                          decrRefCount(dstset);
    } else {


        int deleted = dbDelete(c->db,dstkey);
        if (setTypeSize(dstset) > 0) {
            dbAdd(c->db,dstkey,dstset);
            addReplyLongLong(c,setTypeSize(dstset));
            notifyKeyspaceEvent(NOTIFY_SET,
                op == SET_OP_UNION ? "sunionstore" : "sdiffstore",
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
    }
    zfree(sets);
}
