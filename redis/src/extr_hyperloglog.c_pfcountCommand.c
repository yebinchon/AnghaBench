
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct hllhdr {int* card; int encoding; } ;
struct TYPE_16__ {struct hllhdr* ptr; } ;
typedef TYPE_1__ robj ;
typedef int max ;
struct TYPE_17__ {int argc; int * argv; int db; } ;
typedef TYPE_2__ client ;
struct TYPE_19__ {int dirty; } ;
struct TYPE_18__ {int czero; } ;


 scalar_t__ C_ERR ;
 scalar_t__ C_OK ;
 int HLL_HDR_SIZE ;
 int HLL_RAW ;
 int HLL_REGISTERS ;
 scalar_t__ HLL_VALID_CACHE (struct hllhdr*) ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyLongLong (TYPE_2__*,int) ;
 int addReplySds (TYPE_2__*,int ) ;
 TYPE_1__* dbUnshareStringValue (int ,int ,TYPE_1__*) ;
 int hllCount (struct hllhdr*,int*) ;
 scalar_t__ hllMerge (int *,TYPE_1__*) ;
 int invalid_hll_err ;
 scalar_t__ isHLLObjectOrReply (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* lookupKeyRead (int ,int ) ;
 TYPE_1__* lookupKeyWrite (int ,int ) ;
 int memset (int *,int ,int) ;
 int sdsnew (int ) ;
 TYPE_4__ server ;
 TYPE_3__ shared ;
 int signalModifiedKey (int ,int ) ;

void pfcountCommand(client *c) {
    robj *o;
    struct hllhdr *hdr;
    uint64_t card;





    if (c->argc > 2) {
        uint8_t max[HLL_HDR_SIZE+HLL_REGISTERS], *registers;
        int j;


        memset(max,0,sizeof(max));
        hdr = (struct hllhdr*) max;
        hdr->encoding = HLL_RAW;
        registers = max + HLL_HDR_SIZE;
        for (j = 1; j < c->argc; j++) {

            robj *o = lookupKeyRead(c->db,c->argv[j]);
            if (o == ((void*)0)) continue;
            if (isHLLObjectOrReply(c,o) != C_OK) return;



            if (hllMerge(registers,o) == C_ERR) {
                addReplySds(c,sdsnew(invalid_hll_err));
                return;
            }
        }


        addReplyLongLong(c,hllCount(hdr,((void*)0)));
        return;
    }





    o = lookupKeyWrite(c->db,c->argv[1]);
    if (o == ((void*)0)) {


        addReply(c,shared.czero);
    } else {
        if (isHLLObjectOrReply(c,o) != C_OK) return;
        o = dbUnshareStringValue(c->db,c->argv[1],o);


        hdr = o->ptr;
        if (HLL_VALID_CACHE(hdr)) {

            card = (uint64_t)hdr->card[0];
            card |= (uint64_t)hdr->card[1] << 8;
            card |= (uint64_t)hdr->card[2] << 16;
            card |= (uint64_t)hdr->card[3] << 24;
            card |= (uint64_t)hdr->card[4] << 32;
            card |= (uint64_t)hdr->card[5] << 40;
            card |= (uint64_t)hdr->card[6] << 48;
            card |= (uint64_t)hdr->card[7] << 56;
        } else {
            int invalid = 0;

            card = hllCount(hdr,&invalid);
            if (invalid) {
                addReplySds(c,sdsnew(invalid_hll_err));
                return;
            }
            hdr->card[0] = card & 0xff;
            hdr->card[1] = (card >> 8) & 0xff;
            hdr->card[2] = (card >> 16) & 0xff;
            hdr->card[3] = (card >> 24) & 0xff;
            hdr->card[4] = (card >> 32) & 0xff;
            hdr->card[5] = (card >> 40) & 0xff;
            hdr->card[6] = (card >> 48) & 0xff;
            hdr->card[7] = (card >> 56) & 0xff;




            signalModifiedKey(c->db,c->argv[1]);
            server.dirty++;
        }
        addReplyLongLong(c,card);
    }
}
