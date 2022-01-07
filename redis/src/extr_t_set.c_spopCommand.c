
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_10__ ;


typedef char* sds ;
struct TYPE_26__ {int ptr; } ;
typedef TYPE_1__ robj ;
typedef int int64_t ;
struct TYPE_27__ {int argc; size_t resp; int * argv; TYPE_5__* db; } ;
typedef TYPE_2__ client ;
struct TYPE_29__ {int * null; int syntaxerr; } ;
struct TYPE_28__ {int id; } ;
struct TYPE_25__ {int dirty; } ;


 int NOTIFY_GENERIC ;
 int NOTIFY_SET ;
 int OBJ_ENCODING_INTSET ;
 int OBJ_SET ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyBulk (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 TYPE_1__* createStringObject (char*,int) ;
 TYPE_1__* createStringObjectFromLongLong (int ) ;
 int dbDelete (TYPE_5__*,int ) ;
 int decrRefCount (TYPE_1__*) ;
 int intsetRemove (int ,int ,int *) ;
 TYPE_1__* lookupKeyWriteOrReply (TYPE_2__*,int ,int ) ;
 int notifyKeyspaceEvent (int ,char*,int ,int ) ;
 int rewriteClientCommandVector (TYPE_2__*,int,TYPE_1__*,int ,TYPE_1__*) ;
 int sdslen (char*) ;
 TYPE_10__ server ;
 int setTypeRandomElement (TYPE_1__*,char**,int *) ;
 int setTypeRemove (TYPE_1__*,int ) ;
 scalar_t__ setTypeSize (TYPE_1__*) ;
 TYPE_6__ shared ;
 int signalModifiedKey (TYPE_5__*,int ) ;
 int spopWithCountCommand (TYPE_2__*) ;

void spopCommand(client *c) {
    robj *set, *ele, *aux;
    sds sdsele;
    int64_t llele;
    int encoding;

    if (c->argc == 3) {
        spopWithCountCommand(c);
        return;
    } else if (c->argc > 3) {
        addReply(c,shared.syntaxerr);
        return;
    }



    if ((set = lookupKeyWriteOrReply(c,c->argv[1],shared.null[c->resp]))
         == ((void*)0) || checkType(c,set,OBJ_SET)) return;


    encoding = setTypeRandomElement(set,&sdsele,&llele);


    if (encoding == OBJ_ENCODING_INTSET) {
        ele = createStringObjectFromLongLong(llele);
        set->ptr = intsetRemove(set->ptr,llele,((void*)0));
    } else {
        ele = createStringObject(sdsele,sdslen(sdsele));
        setTypeRemove(set,ele->ptr);
    }

    notifyKeyspaceEvent(NOTIFY_SET,"spop",c->argv[1],c->db->id);


    aux = createStringObject("SREM",4);
    rewriteClientCommandVector(c,3,aux,c->argv[1],ele);
    decrRefCount(aux);


    addReplyBulk(c,ele);
    decrRefCount(ele);


    if (setTypeSize(set) == 0) {
        dbDelete(c->db,c->argv[1]);
        notifyKeyspaceEvent(NOTIFY_GENERIC,"del",c->argv[1],c->db->id);
    }


    signalModifiedKey(c->db,c->argv[1]);
    server.dirty++;
}
