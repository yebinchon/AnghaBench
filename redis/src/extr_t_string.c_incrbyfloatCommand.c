
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int robj ;
struct TYPE_13__ {TYPE_2__* db; int ** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_15__ {int dirty; } ;
struct TYPE_14__ {int id; } ;


 scalar_t__ C_OK ;
 int NOTIFY_STRING ;
 int OBJ_STRING ;
 int addReplyBulk (TYPE_1__*,int *) ;
 int addReplyError (TYPE_1__*,char*) ;
 scalar_t__ checkType (TYPE_1__*,int *,int ) ;
 int * createStringObject (char*,int) ;
 int * createStringObjectFromLongDouble (long double,int) ;
 int dbAdd (TYPE_2__*,int *,int *) ;
 int dbOverwrite (TYPE_2__*,int *,int *) ;
 int decrRefCount (int *) ;
 scalar_t__ getLongDoubleFromObjectOrReply (TYPE_1__*,int *,long double*,int *) ;
 scalar_t__ isinf (long double) ;
 scalar_t__ isnan (long double) ;
 int * lookupKeyWrite (TYPE_2__*,int *) ;
 int notifyKeyspaceEvent (int ,char*,int *,int ) ;
 int rewriteClientCommandArgument (TYPE_1__*,int,int *) ;
 TYPE_3__ server ;
 int signalModifiedKey (TYPE_2__*,int *) ;

void incrbyfloatCommand(client *c) {
    long double incr, value;
    robj *o, *new, *aux;

    o = lookupKeyWrite(c->db,c->argv[1]);
    if (o != ((void*)0) && checkType(c,o,OBJ_STRING)) return;
    if (getLongDoubleFromObjectOrReply(c,o,&value,((void*)0)) != C_OK ||
        getLongDoubleFromObjectOrReply(c,c->argv[2],&incr,((void*)0)) != C_OK)
        return;

    value += incr;
    if (isnan(value) || isinf(value)) {
        addReplyError(c,"increment would produce NaN or Infinity");
        return;
    }
    new = createStringObjectFromLongDouble(value,1);
    if (o)
        dbOverwrite(c->db,c->argv[1],new);
    else
        dbAdd(c->db,c->argv[1],new);
    signalModifiedKey(c->db,c->argv[1]);
    notifyKeyspaceEvent(NOTIFY_STRING,"incrbyfloat",c->argv[1],c->db->id);
    server.dirty++;
    addReplyBulk(c,new);




    aux = createStringObject("SET",3);
    rewriteClientCommandArgument(c,0,aux);
    decrRefCount(aux);
    rewriteClientCommandArgument(c,2,new);
}
