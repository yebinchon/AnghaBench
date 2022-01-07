
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct hllhdr {scalar_t__ encoding; int registers; } ;
typedef struct hllhdr uint8_t ;
typedef struct hllhdr* sds ;
struct TYPE_22__ {struct hllhdr* ptr; } ;
typedef TYPE_1__ robj ;
struct TYPE_23__ {int argc; TYPE_7__** argv; int db; } ;
typedef TYPE_2__ client ;
struct TYPE_26__ {char* ptr; } ;
struct TYPE_25__ {int dirty; } ;
struct TYPE_24__ {int czero; int cone; } ;


 scalar_t__ C_ERR ;
 scalar_t__ C_OK ;
 int HLL_DENSE_GET_REGISTER (struct hllhdr,int ,int) ;
 int HLL_HDR_SIZE ;
 int HLL_REGISTERS ;
 scalar_t__ HLL_SPARSE ;
 scalar_t__ HLL_SPARSE_IS_XZERO (struct hllhdr*) ;
 scalar_t__ HLL_SPARSE_IS_ZERO (struct hllhdr*) ;
 int HLL_SPARSE_VAL_LEN (struct hllhdr*) ;
 int HLL_SPARSE_VAL_VALUE (struct hllhdr*) ;
 int HLL_SPARSE_XZERO_LEN (struct hllhdr*) ;
 int HLL_SPARSE_ZERO_LEN (struct hllhdr*) ;
 int addReply (TYPE_2__*,int ) ;
 int addReplyArrayLen (TYPE_2__*,int) ;
 int addReplyBulkCBuffer (TYPE_2__*,struct hllhdr*,int ) ;
 int addReplyError (TYPE_2__*,char*) ;
 int addReplyErrorFormat (TYPE_2__*,char*,char*) ;
 int addReplyLongLong (TYPE_2__*,struct hllhdr) ;
 int addReplySds (TYPE_2__*,int ) ;
 int addReplyStatus (TYPE_2__*,char*) ;
 TYPE_1__* dbUnshareStringValue (int ,TYPE_7__*,TYPE_1__*) ;
 scalar_t__ hllSparseToDense (TYPE_1__*) ;
 int invalid_hll_err ;
 scalar_t__ isHLLObjectOrReply (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* lookupKeyWrite (int ,TYPE_7__*) ;
 struct hllhdr* sdscatprintf (struct hllhdr*,char*,int,...) ;
 struct hllhdr* sdsempty () ;
 int sdsfree (struct hllhdr*) ;
 int sdslen (struct hllhdr*) ;
 int sdsnew (int ) ;
 struct hllhdr* sdstrim (struct hllhdr*,char*) ;
 TYPE_4__ server ;
 TYPE_3__ shared ;
 int strcasecmp (char*,char*) ;

void pfdebugCommand(client *c) {
    char *cmd = c->argv[1]->ptr;
    struct hllhdr *hdr;
    robj *o;
    int j;

    o = lookupKeyWrite(c->db,c->argv[2]);
    if (o == ((void*)0)) {
        addReplyError(c,"The specified key does not exist");
        return;
    }
    if (isHLLObjectOrReply(c,o) != C_OK) return;
    o = dbUnshareStringValue(c->db,c->argv[2],o);
    hdr = o->ptr;


    if (!strcasecmp(cmd,"getreg")) {
        if (c->argc != 3) goto arityerr;

        if (hdr->encoding == HLL_SPARSE) {
            if (hllSparseToDense(o) == C_ERR) {
                addReplySds(c,sdsnew(invalid_hll_err));
                return;
            }
            server.dirty++;
        }

        hdr = o->ptr;
        addReplyArrayLen(c,HLL_REGISTERS);
        for (j = 0; j < HLL_REGISTERS; j++) {
            uint8_t val;

            HLL_DENSE_GET_REGISTER(val,hdr->registers,j);
            addReplyLongLong(c,val);
        }
    }

    else if (!strcasecmp(cmd,"decode")) {
        if (c->argc != 3) goto arityerr;

        uint8_t *p = o->ptr, *end = p+sdslen(o->ptr);
        sds decoded = sdsempty();

        if (hdr->encoding != HLL_SPARSE) {
            addReplyError(c,"HLL encoding is not sparse");
            return;
        }

        p += HLL_HDR_SIZE;
        while(p < end) {
            int runlen, regval;

            if (HLL_SPARSE_IS_ZERO(p)) {
                runlen = HLL_SPARSE_ZERO_LEN(p);
                p++;
                decoded = sdscatprintf(decoded,"z:%d ",runlen);
            } else if (HLL_SPARSE_IS_XZERO(p)) {
                runlen = HLL_SPARSE_XZERO_LEN(p);
                p += 2;
                decoded = sdscatprintf(decoded,"Z:%d ",runlen);
            } else {
                runlen = HLL_SPARSE_VAL_LEN(p);
                regval = HLL_SPARSE_VAL_VALUE(p);
                p++;
                decoded = sdscatprintf(decoded,"v:%d,%d ",regval,runlen);
            }
        }
        decoded = sdstrim(decoded," ");
        addReplyBulkCBuffer(c,decoded,sdslen(decoded));
        sdsfree(decoded);
    }

    else if (!strcasecmp(cmd,"encoding")) {
        char *encodingstr[2] = {"dense","sparse"};
        if (c->argc != 3) goto arityerr;

        addReplyStatus(c,encodingstr[hdr->encoding]);
    }

    else if (!strcasecmp(cmd,"todense")) {
        int conv = 0;
        if (c->argc != 3) goto arityerr;

        if (hdr->encoding == HLL_SPARSE) {
            if (hllSparseToDense(o) == C_ERR) {
                addReplySds(c,sdsnew(invalid_hll_err));
                return;
            }
            conv = 1;
            server.dirty++;
        }
        addReply(c,conv ? shared.cone : shared.czero);
    } else {
        addReplyErrorFormat(c,"Unknown PFDEBUG subcommand '%s'", cmd);
    }
    return;

arityerr:
    addReplyErrorFormat(c,
        "Wrong number of arguments for the '%s' subcommand",cmd);
}
