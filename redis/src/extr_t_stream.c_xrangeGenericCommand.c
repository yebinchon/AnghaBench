
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int streamID ;
typedef int stream ;
struct TYPE_17__ {int * ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_18__ {int argc; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_19__ {int emptyarray; int syntaxerr; } ;


 scalar_t__ C_ERR ;
 scalar_t__ C_OK ;
 int OBJ_STREAM ;
 int UINT64_MAX ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyNullArray (TYPE_2__*) ;
 scalar_t__ checkType (TYPE_2__*,TYPE_1__*,int ) ;
 scalar_t__ getLongLongFromObjectOrReply (TYPE_2__*,TYPE_1__*,long long*,int *) ;
 TYPE_1__* lookupKeyReadOrReply (TYPE_2__*,TYPE_1__*,int ) ;
 TYPE_7__ shared ;
 scalar_t__ strcasecmp (int *,char*) ;
 scalar_t__ streamParseIDOrReply (TYPE_2__*,TYPE_1__*,int *,int ) ;
 int streamReplyWithRange (TYPE_2__*,int *,int *,int *,long long,int,int *,int *,int ,int *) ;

void xrangeGenericCommand(client *c, int rev) {
    robj *o;
    stream *s;
    streamID startid, endid;
    long long count = -1;
    robj *startarg = rev ? c->argv[3] : c->argv[2];
    robj *endarg = rev ? c->argv[2] : c->argv[3];

    if (streamParseIDOrReply(c,startarg,&startid,0) == C_ERR) return;
    if (streamParseIDOrReply(c,endarg,&endid,UINT64_MAX) == C_ERR) return;


    if (c->argc > 4) {
        for (int j = 4; j < c->argc; j++) {
            int additional = c->argc-j-1;
            if (strcasecmp(c->argv[j]->ptr,"COUNT") == 0 && additional >= 1) {
                if (getLongLongFromObjectOrReply(c,c->argv[j+1],&count,((void*)0))
                    != C_OK) return;
                if (count < 0) count = 0;
                j++;
            } else {
                addReply(c,shared.syntaxerr);
                return;
            }
        }
    }


    if ((o = lookupKeyReadOrReply(c,c->argv[1],shared.emptyarray)) == ((void*)0) ||
         checkType(c,o,OBJ_STREAM)) return;

    s = o->ptr;

    if (count == 0) {
        addReplyNullArray(c);
    } else {
        if (count == -1) count = 0;
        streamReplyWithRange(c,s,&startid,&endid,count,rev,((void*)0),((void*)0),0,((void*)0));
    }
}
