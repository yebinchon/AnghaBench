
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct hllhdr {int encoding; int registers; } ;
struct TYPE_24__ {struct hllhdr* ptr; } ;
typedef TYPE_1__ robj ;
typedef int max ;
struct TYPE_25__ {int argc; TYPE_3__* db; int * argv; } ;
typedef TYPE_2__ client ;
struct TYPE_28__ {int dirty; } ;
struct TYPE_27__ {int ok; } ;
struct TYPE_26__ {int id; } ;


 scalar_t__ C_ERR ;
 scalar_t__ C_OK ;

 int HLL_INVALIDATE_CACHE (struct hllhdr*) ;
 int HLL_REGISTERS ;

 int NOTIFY_STRING ;
 int addReply (TYPE_2__*,int ) ;
 int addReplySds (TYPE_2__*,int ) ;
 TYPE_1__* createHLLObject () ;
 int dbAdd (TYPE_3__*,int ,TYPE_1__*) ;
 TYPE_1__* dbUnshareStringValue (TYPE_3__*,int ,TYPE_1__*) ;
 int hllDenseSet (int ,int,scalar_t__) ;
 scalar_t__ hllMerge (scalar_t__*,TYPE_1__*) ;
 int hllSparseSet (TYPE_1__*,int,scalar_t__) ;
 scalar_t__ hllSparseToDense (TYPE_1__*) ;
 int invalid_hll_err ;
 scalar_t__ isHLLObjectOrReply (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* lookupKeyRead (TYPE_3__*,int ) ;
 TYPE_1__* lookupKeyWrite (TYPE_3__*,int ) ;
 int memset (scalar_t__*,int ,int) ;
 int notifyKeyspaceEvent (int ,char*,int ,int ) ;
 int sdsnew (int ) ;
 TYPE_5__ server ;
 TYPE_4__ shared ;
 int signalModifiedKey (TYPE_3__*,int ) ;

void pfmergeCommand(client *c) {
    uint8_t max[HLL_REGISTERS];
    struct hllhdr *hdr;
    int j;
    int use_dense = 0;




    memset(max,0,sizeof(max));
    for (j = 1; j < c->argc; j++) {

        robj *o = lookupKeyRead(c->db,c->argv[j]);
        if (o == ((void*)0)) continue;
        if (isHLLObjectOrReply(c,o) != C_OK) return;



        hdr = o->ptr;
        if (hdr->encoding == 129) use_dense = 1;



        if (hllMerge(max,o) == C_ERR) {
            addReplySds(c,sdsnew(invalid_hll_err));
            return;
        }
    }


    robj *o = lookupKeyWrite(c->db,c->argv[1]);
    if (o == ((void*)0)) {



        o = createHLLObject();
        dbAdd(c->db,c->argv[1],o);
    } else {



        o = dbUnshareStringValue(c->db,c->argv[1],o);
    }



    if (use_dense && hllSparseToDense(o) == C_ERR) {
        addReplySds(c,sdsnew(invalid_hll_err));
        return;
    }



    for (j = 0; j < HLL_REGISTERS; j++) {
        if (max[j] == 0) continue;
        hdr = o->ptr;
        switch(hdr->encoding) {
        case 129: hllDenseSet(hdr->registers,j,max[j]); break;
        case 128: hllSparseSet(o,j,max[j]); break;
        }
    }
    hdr = o->ptr;

    HLL_INVALIDATE_CACHE(hdr);

    signalModifiedKey(c->db,c->argv[1]);


    notifyKeyspaceEvent(NOTIFY_STRING,"pfadd",c->argv[1],c->db->id);
    server.dirty++;
    addReply(c,shared.ok);
}
