
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct hllhdr {int dummy; } ;
struct TYPE_25__ {struct hllhdr* ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_26__ {int argc; TYPE_3__* db; TYPE_4__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_30__ {int dirty; } ;
struct TYPE_29__ {int czero; int cone; } ;
struct TYPE_28__ {scalar_t__ ptr; } ;
struct TYPE_27__ {int id; } ;


 scalar_t__ C_OK ;
 int HLL_INVALIDATE_CACHE (struct hllhdr*) ;
 int NOTIFY_STRING ;
 int addReply (TYPE_2__*,int ) ;
 int addReplySds (TYPE_2__*,int ) ;
 TYPE_1__* createHLLObject () ;
 int dbAdd (TYPE_3__*,TYPE_4__*,TYPE_1__*) ;
 TYPE_1__* dbUnshareStringValue (TYPE_3__*,TYPE_4__*,TYPE_1__*) ;
 int hllAdd (TYPE_1__*,unsigned char*,int ) ;
 int invalid_hll_err ;
 scalar_t__ isHLLObjectOrReply (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* lookupKeyWrite (TYPE_3__*,TYPE_4__*) ;
 int notifyKeyspaceEvent (int ,char*,TYPE_4__*,int ) ;
 int sdslen (scalar_t__) ;
 int sdsnew (int ) ;
 TYPE_6__ server ;
 TYPE_5__ shared ;
 int signalModifiedKey (TYPE_3__*,TYPE_4__*) ;

void pfaddCommand(client *c) {
    robj *o = lookupKeyWrite(c->db,c->argv[1]);
    struct hllhdr *hdr;
    int updated = 0, j;

    if (o == ((void*)0)) {



        o = createHLLObject();
        dbAdd(c->db,c->argv[1],o);
        updated++;
    } else {
        if (isHLLObjectOrReply(c,o) != C_OK) return;
        o = dbUnshareStringValue(c->db,c->argv[1],o);
    }

    for (j = 2; j < c->argc; j++) {
        int retval = hllAdd(o, (unsigned char*)c->argv[j]->ptr,
                               sdslen(c->argv[j]->ptr));
        switch(retval) {
        case 1:
            updated++;
            break;
        case -1:
            addReplySds(c,sdsnew(invalid_hll_err));
            return;
        }
    }
    hdr = o->ptr;
    if (updated) {
        signalModifiedKey(c->db,c->argv[1]);
        notifyKeyspaceEvent(NOTIFY_STRING,"pfadd",c->argv[1],c->db->id);
        server.dirty++;
        HLL_INVALIDATE_CACHE(hdr);
    }
    addReply(c, updated ? shared.cone : shared.czero);
}
