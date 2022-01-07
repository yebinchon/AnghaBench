
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_11__ ;


struct TYPE_24__ {TYPE_1__* consumer; } ;
typedef TYPE_2__ streamNACK ;
typedef int streamID ;
struct TYPE_25__ {int pel; } ;
typedef TYPE_3__ streamCG ;
struct TYPE_26__ {int ptr; } ;
typedef TYPE_4__ robj ;
struct TYPE_27__ {int argc; TYPE_8__** argv; int db; } ;
typedef TYPE_5__ client ;
typedef int buf ;
struct TYPE_28__ {int ptr; } ;
struct TYPE_23__ {int pel; } ;
struct TYPE_22__ {int dirty; } ;
struct TYPE_21__ {int czero; } ;


 scalar_t__ C_OK ;
 int OBJ_STREAM ;
 int addReply (TYPE_5__*,int ) ;
 int addReplyLongLong (TYPE_5__*,int) ;
 scalar_t__ checkType (TYPE_5__*,TYPE_4__*,int ) ;
 TYPE_4__* lookupKeyRead (int ,TYPE_8__*) ;
 TYPE_2__* raxFind (int ,unsigned char*,int) ;
 TYPE_2__* raxNotFound ;
 int raxRemove (int ,unsigned char*,int,int *) ;
 TYPE_12__ server ;
 TYPE_11__ shared ;
 int streamEncodeID (unsigned char*,int *) ;
 int streamFreeNACK (TYPE_2__*) ;
 TYPE_3__* streamLookupCG (int ,int ) ;
 scalar_t__ streamParseStrictIDOrReply (TYPE_5__*,TYPE_8__*,int *,int ) ;

void xackCommand(client *c) {
    streamCG *group = ((void*)0);
    robj *o = lookupKeyRead(c->db,c->argv[1]);
    if (o) {
        if (checkType(c,o,OBJ_STREAM)) return;
        group = streamLookupCG(o->ptr,c->argv[2]->ptr);
    }


    if (o == ((void*)0) || group == ((void*)0)) {
        addReply(c,shared.czero);
        return;
    }

    int acknowledged = 0;
    for (int j = 3; j < c->argc; j++) {
        streamID id;
        unsigned char buf[sizeof(streamID)];
        if (streamParseStrictIDOrReply(c,c->argv[j],&id,0) != C_OK) return;
        streamEncodeID(buf,&id);




        streamNACK *nack = raxFind(group->pel,buf,sizeof(buf));
        if (nack != raxNotFound) {
            raxRemove(group->pel,buf,sizeof(buf),((void*)0));
            raxRemove(nack->consumer->pel,buf,sizeof(buf),((void*)0));
            streamFreeNACK(nack);
            acknowledged++;
            server.dirty++;
        }
    }
    addReplyLongLong(c,acknowledged);
}
