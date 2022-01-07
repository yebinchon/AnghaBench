
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int streamIterator ;
typedef int streamID ;
struct TYPE_17__ {scalar_t__ length; int last_id; } ;
typedef TYPE_2__ stream ;
struct TYPE_18__ {TYPE_2__* ptr; } ;
typedef TYPE_3__ robj ;
typedef int int64_t ;
struct TYPE_19__ {TYPE_1__* db; int * argv; } ;
typedef TYPE_4__ client ;
struct TYPE_21__ {int dirty; } ;
struct TYPE_20__ {int ok; int nokeyerr; } ;
struct TYPE_16__ {int id; } ;


 scalar_t__ C_OK ;
 int NOTIFY_STREAM ;
 int OBJ_STREAM ;
 int addReply (TYPE_4__*,int ) ;
 int addReplyError (TYPE_4__*,char*) ;
 scalar_t__ checkType (TYPE_4__*,TYPE_3__*,int ) ;
 TYPE_3__* lookupKeyWriteOrReply (TYPE_4__*,int ,int ) ;
 int notifyKeyspaceEvent (int ,char*,int ,int ) ;
 TYPE_9__ server ;
 TYPE_8__ shared ;
 scalar_t__ streamCompareID (int *,int *) ;
 int streamIteratorGetID (int *,int *,int *) ;
 int streamIteratorStart (int *,TYPE_2__*,int *,int *,int) ;
 int streamIteratorStop (int *) ;
 scalar_t__ streamParseStrictIDOrReply (TYPE_4__*,int ,int *,int ) ;

void xsetidCommand(client *c) {
    robj *o = lookupKeyWriteOrReply(c,c->argv[1],shared.nokeyerr);
    if (o == ((void*)0) || checkType(c,o,OBJ_STREAM)) return;

    stream *s = o->ptr;
    streamID id;
    if (streamParseStrictIDOrReply(c,c->argv[2],&id,0) != C_OK) return;




    if (s->length > 0) {
        streamID maxid;
        streamIterator si;
        streamIteratorStart(&si,s,((void*)0),((void*)0),1);
        int64_t numfields;
        streamIteratorGetID(&si,&maxid,&numfields);
        streamIteratorStop(&si);

        if (streamCompareID(&id,&maxid) < 0) {
            addReplyError(c,"The ID specified in XSETID is smaller than the "
                            "target stream top item");
            return;
        }
    }
    s->last_id = id;
    addReply(c,shared.ok);
    server.dirty++;
    notifyKeyspaceEvent(NOTIFY_STREAM,"xsetid",c->argv[1],c->db->id);
}
