
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned int uint8_t ;
typedef int uint64_t ;
struct hllhdr {scalar_t__ encoding; int registers; } ;
typedef scalar_t__ sds ;
struct TYPE_7__ {struct hllhdr* ptr; } ;
typedef TYPE_1__ robj ;
typedef unsigned int int64_t ;
typedef int ele ;
typedef int client ;
struct TYPE_9__ {int hll_sparse_max_bytes; } ;
struct TYPE_8__ {int ok; } ;


 int HLL_DENSE_GET_REGISTER (unsigned int,int ,unsigned int) ;
 int HLL_DENSE_SET_REGISTER (int ,unsigned int,unsigned int) ;
 scalar_t__ HLL_DENSE_SIZE ;
 scalar_t__ HLL_HDR_SIZE ;
 int HLL_REGISTERS ;
 unsigned int HLL_REGISTER_MAX ;
 scalar_t__ HLL_SPARSE ;
 unsigned int HLL_TEST_CYCLES ;
 int addReply (int *,int ) ;
 int addReplyError (int *,char*) ;
 int addReplyErrorFormat (int *,char*,unsigned long long,unsigned long long,...) ;
 int ceil (double) ;
 TYPE_1__* createHLLObject () ;
 int decrRefCount (TYPE_1__*) ;
 int hllAdd (TYPE_1__*,unsigned char*,int) ;
 scalar_t__ hllCount (struct hllhdr*,int *) ;
 int hllDenseAdd (int ,unsigned char*,int) ;
 int memset (int ,int ,scalar_t__) ;
 unsigned int rand () ;
 int sdsfree (scalar_t__) ;
 scalar_t__ sdsnewlen (int *,scalar_t__) ;
 TYPE_3__ server ;
 TYPE_2__ shared ;
 double sqrt (int) ;

void pfselftestCommand(client *c) {
    unsigned int j, i;
    sds bitcounters = sdsnewlen(((void*)0),HLL_DENSE_SIZE);
    struct hllhdr *hdr = (struct hllhdr*) bitcounters, *hdr2;
    robj *o = ((void*)0);
    uint8_t bytecounters[HLL_REGISTERS];





    for (j = 0; j < HLL_TEST_CYCLES; j++) {


        for (i = 0; i < HLL_REGISTERS; i++) {
            unsigned int r = rand() & HLL_REGISTER_MAX;

            bytecounters[i] = r;
            HLL_DENSE_SET_REGISTER(hdr->registers,i,r);
        }

        for (i = 0; i < HLL_REGISTERS; i++) {
            unsigned int val;

            HLL_DENSE_GET_REGISTER(val,hdr->registers,i);
            if (val != bytecounters[i]) {
                addReplyErrorFormat(c,
                    "TESTFAILED Register %d should be %d but is %d",
                    i, (int) bytecounters[i], (int) val);
                goto cleanup;
            }
        }
    }
    memset(hdr->registers,0,HLL_DENSE_SIZE-HLL_HDR_SIZE);
    o = createHLLObject();
    double relerr = 1.04/sqrt(HLL_REGISTERS);
    int64_t checkpoint = 1;
    uint64_t seed = (uint64_t)rand() | (uint64_t)rand() << 32;
    uint64_t ele;
    for (j = 1; j <= 10000000; j++) {
        ele = j ^ seed;
        hllDenseAdd(hdr->registers,(unsigned char*)&ele,sizeof(ele));
        hllAdd(o,(unsigned char*)&ele,sizeof(ele));



        if (j == checkpoint && j < server.hll_sparse_max_bytes/2) {
            hdr2 = o->ptr;
            if (hdr2->encoding != HLL_SPARSE) {
                addReplyError(c, "TESTFAILED sparse encoding not used");
                goto cleanup;
            }
        }


        if (j == checkpoint && hllCount(hdr,((void*)0)) != hllCount(o->ptr,((void*)0))) {
                addReplyError(c, "TESTFAILED dense/sparse disagree");
                goto cleanup;
        }


        if (j == checkpoint) {
            int64_t abserr = checkpoint - (int64_t)hllCount(hdr,((void*)0));
            uint64_t maxerr = ceil(relerr*6*checkpoint);





            if (j == 10) maxerr = 1;

            if (abserr < 0) abserr = -abserr;
            if (abserr > (int64_t)maxerr) {
                addReplyErrorFormat(c,
                    "TESTFAILED Too big error. card:%llu abserr:%llu",
                    (unsigned long long) checkpoint,
                    (unsigned long long) abserr);
                goto cleanup;
            }
            checkpoint *= 10;
        }
    }


    addReply(c,shared.ok);

cleanup:
    sdsfree(bitcounters);
    if (o) decrRefCount(o);
}
