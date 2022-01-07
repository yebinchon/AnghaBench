
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_8__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_2__ ;
typedef struct TYPE_41__ TYPE_1__ ;
typedef struct TYPE_40__ TYPE_15__ ;


typedef int setTypeIterator ;
typedef char* sds ;
struct TYPE_41__ {int ptr; } ;
typedef TYPE_1__ robj ;
typedef int int64_t ;
struct TYPE_42__ {size_t resp; TYPE_1__** argv; TYPE_6__* db; } ;
typedef TYPE_2__ client ;
struct TYPE_44__ {int del; int * emptyset; int * null; int outofrangeerr; } ;
struct TYPE_43__ {int id; } ;
struct TYPE_40__ {scalar_t__ dirty; int sremCommand; } ;


 scalar_t__ C_OK ;
 int NOTIFY_GENERIC ;
 int NOTIFY_SET ;
 int OBJ_ENCODING_INTSET ;
 int OBJ_SET ;
 int PROPAGATE_AOF ;
 int PROPAGATE_REPL ;
 int SET_OP_UNION ;
 unsigned long SPOP_MOVE_STRATEGY_MUL ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyBulkCBuffer (TYPE_2__*,char*,int) ;
 int addReplyBulkLongLong (TYPE_2__*,int ) ;
 int addReplySetLen (TYPE_2__*,unsigned long) ;
 int alsoPropagate (int ,int ,TYPE_1__**,int,int) ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 TYPE_1__* createStringObject (char*,int) ;
 TYPE_1__* createStringObjectFromLongLong (int ) ;
 int dbDelete (TYPE_6__*,TYPE_1__*) ;
 int dbOverwrite (TYPE_6__*,TYPE_1__*,TYPE_1__*) ;
 int decrRefCount (TYPE_1__*) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_2__*,TYPE_1__*,long*,int *) ;
 int intsetRemove (int ,int ,int *) ;
 TYPE_1__* lookupKeyWriteOrReply (TYPE_2__*,TYPE_1__*,int ) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_1__*,int ) ;
 int preventCommandPropagation (TYPE_2__*) ;
 int rewriteClientCommandVector (TYPE_2__*,int,int ,TYPE_1__*) ;
 char* sdsdup (char*) ;
 int sdsfree (char*) ;
 char* sdsfromlonglong (int ) ;
 int sdslen (char*) ;
 TYPE_15__ server ;
 int setTypeAdd (TYPE_1__*,char*) ;
 TYPE_1__* setTypeCreate (char*) ;
 int * setTypeInitIterator (TYPE_1__*) ;
 int setTypeNext (int *,char**,int *) ;
 int setTypeRandomElement (TYPE_1__*,char**,int *) ;
 int setTypeReleaseIterator (int *) ;
 int setTypeRemove (TYPE_1__*,char*) ;
 unsigned long setTypeSize (TYPE_1__*) ;
 TYPE_8__ shared ;
 int signalModifiedKey (TYPE_6__*,TYPE_1__*) ;
 int sunionDiffGenericCommand (TYPE_2__*,TYPE_1__**,int,int *,int ) ;

void spopWithCountCommand(client *c) {
    long l;
    unsigned long count, size;
    robj *set;


    if (getLongFromObjectOrReply(c,c->argv[2],&l,((void*)0)) != C_OK) return;
    if (l >= 0) {
        count = (unsigned long) l;
    } else {
        addReply(c,shared.outofrangeerr);
        return;
    }



    if ((set = lookupKeyWriteOrReply(c,c->argv[1],shared.null[c->resp]))
        == ((void*)0) || checkType(c,set,OBJ_SET)) return;



    if (count == 0) {
        addReply(c,shared.emptyset[c->resp]);
        return;
    }

    size = setTypeSize(set);


    notifyKeyspaceEvent(NOTIFY_SET,"spop",c->argv[1],c->db->id);
    server.dirty += count;




    if (count >= size) {

        sunionDiffGenericCommand(c,c->argv+1,1,((void*)0),SET_OP_UNION);


        dbDelete(c->db,c->argv[1]);
        notifyKeyspaceEvent(NOTIFY_GENERIC,"del",c->argv[1],c->db->id);


        rewriteClientCommandVector(c,2,shared.del,c->argv[1]);
        signalModifiedKey(c->db,c->argv[1]);
        server.dirty++;
        return;
    }




    robj *propargv[3];
    propargv[0] = createStringObject("SREM",4);
    propargv[1] = c->argv[1];
    addReplySetLen(c,count);


    sds sdsele;
    robj *objele;
    int encoding;
    int64_t llele;
    unsigned long remaining = size-count;
    if (remaining*SPOP_MOVE_STRATEGY_MUL > count) {
        while(count--) {

            encoding = setTypeRandomElement(set,&sdsele,&llele);
            if (encoding == OBJ_ENCODING_INTSET) {
                addReplyBulkLongLong(c,llele);
                objele = createStringObjectFromLongLong(llele);
                set->ptr = intsetRemove(set->ptr,llele,((void*)0));
            } else {
                addReplyBulkCBuffer(c,sdsele,sdslen(sdsele));
                objele = createStringObject(sdsele,sdslen(sdsele));
                setTypeRemove(set,sdsele);
            }


            propargv[2] = objele;
            alsoPropagate(server.sremCommand,c->db->id,propargv,3,
                PROPAGATE_AOF|PROPAGATE_REPL);
            decrRefCount(objele);
        }
    } else {
        robj *newset = ((void*)0);


        while(remaining--) {
            encoding = setTypeRandomElement(set,&sdsele,&llele);
            if (encoding == OBJ_ENCODING_INTSET) {
                sdsele = sdsfromlonglong(llele);
            } else {
                sdsele = sdsdup(sdsele);
            }
            if (!newset) newset = setTypeCreate(sdsele);
            setTypeAdd(newset,sdsele);
            setTypeRemove(set,sdsele);
            sdsfree(sdsele);
        }


        setTypeIterator *si;
        si = setTypeInitIterator(set);
        while((encoding = setTypeNext(si,&sdsele,&llele)) != -1) {
            if (encoding == OBJ_ENCODING_INTSET) {
                addReplyBulkLongLong(c,llele);
                objele = createStringObjectFromLongLong(llele);
            } else {
                addReplyBulkCBuffer(c,sdsele,sdslen(sdsele));
                objele = createStringObject(sdsele,sdslen(sdsele));
            }


            propargv[2] = objele;
            alsoPropagate(server.sremCommand,c->db->id,propargv,3,
                PROPAGATE_AOF|PROPAGATE_REPL);
            decrRefCount(objele);
        }
        setTypeReleaseIterator(si);


        dbOverwrite(c->db,c->argv[1],newset);
    }





    decrRefCount(propargv[0]);
    preventCommandPropagation(c);
    signalModifiedKey(c->db,c->argv[1]);
    server.dirty++;
}
