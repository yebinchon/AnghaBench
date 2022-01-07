
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int sds ;
typedef int robj ;
struct TYPE_14__ {TYPE_2__* db; TYPE_3__** argv; } ;
typedef TYPE_1__ client ;
typedef int buf ;
struct TYPE_17__ {int dirty; } ;
struct TYPE_16__ {int ptr; } ;
struct TYPE_15__ {int id; } ;


 scalar_t__ C_OK ;
 int HASH_SET_TAKE_VALUE ;
 int LD_STR_HUMAN ;
 int MAX_LONG_DOUBLE_CHARS ;
 int NOTIFY_HASH ;
 int addReplyBulkCBuffer (TYPE_1__*,char*,int) ;
 int addReplyError (TYPE_1__*,char*) ;
 int * createRawStringObject (char*,int) ;
 int * createStringObject (char*,int) ;
 int decrRefCount (int *) ;
 scalar_t__ getLongDoubleFromObjectOrReply (TYPE_1__*,TYPE_3__*,long double*,int *) ;
 scalar_t__ hashTypeGetValue (int *,int ,unsigned char**,unsigned int*,long long*) ;
 int * hashTypeLookupWriteOrCreate (TYPE_1__*,TYPE_3__*) ;
 int hashTypeSet (int *,int ,int ,int ) ;
 scalar_t__ isinf (long double) ;
 scalar_t__ isnan (long double) ;
 int ld2string (char*,int,long double,int ) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_3__*,int ) ;
 int rewriteClientCommandArgument (TYPE_1__*,int,int *) ;
 int sdsnewlen (char*,int) ;
 TYPE_4__ server ;
 int signalModifiedKey (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ string2ld (char*,unsigned int,long double*) ;

void hincrbyfloatCommand(client *c) {
    long double value, incr;
    long long ll;
    robj *o;
    sds new;
    unsigned char *vstr;
    unsigned int vlen;

    if (getLongDoubleFromObjectOrReply(c,c->argv[3],&incr,((void*)0)) != C_OK) return;
    if ((o = hashTypeLookupWriteOrCreate(c,c->argv[1])) == ((void*)0)) return;
    if (hashTypeGetValue(o,c->argv[2]->ptr,&vstr,&vlen,&ll) == C_OK) {
        if (vstr) {
            if (string2ld((char*)vstr,vlen,&value) == 0) {
                addReplyError(c,"hash value is not a float");
                return;
            }
        } else {
            value = (long double)ll;
        }
    } else {
        value = 0;
    }

    value += incr;
    if (isnan(value) || isinf(value)) {
        addReplyError(c,"increment would produce NaN or Infinity");
        return;
    }

    char buf[MAX_LONG_DOUBLE_CHARS];
    int len = ld2string(buf,sizeof(buf),value,LD_STR_HUMAN);
    new = sdsnewlen(buf,len);
    hashTypeSet(o,c->argv[2]->ptr,new,HASH_SET_TAKE_VALUE);
    addReplyBulkCBuffer(c,buf,len);
    signalModifiedKey(c->db,c->argv[1]);
    notifyKeyspaceEvent(NOTIFY_HASH,"hincrbyfloat",c->argv[1],c->db->id);
    server.dirty++;




    robj *aux, *newobj;
    aux = createStringObject("HSET",4);
    newobj = createRawStringObject(buf,len);
    rewriteClientCommandArgument(c,0,aux);
    decrRefCount(aux);
    rewriteClientCommandArgument(c,3,newobj);
    decrRefCount(newobj);
}
