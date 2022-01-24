#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct hllhdr {scalar_t__ encoding; int /*<<< orphan*/  registers; } ;
typedef  struct hllhdr uint8_t ;
typedef  struct hllhdr* sds ;
struct TYPE_22__ {struct hllhdr* ptr; } ;
typedef  TYPE_1__ robj ;
struct TYPE_23__ {int argc; TYPE_7__** argv; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ client ;
struct TYPE_26__ {char* ptr; } ;
struct TYPE_25__ {int /*<<< orphan*/  dirty; } ;
struct TYPE_24__ {int /*<<< orphan*/  czero; int /*<<< orphan*/  cone; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  FUNC0 (struct hllhdr,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HLL_HDR_SIZE ; 
 int HLL_REGISTERS ; 
 scalar_t__ HLL_SPARSE ; 
 scalar_t__ FUNC1 (struct hllhdr*) ; 
 scalar_t__ FUNC2 (struct hllhdr*) ; 
 int FUNC3 (struct hllhdr*) ; 
 int FUNC4 (struct hllhdr*) ; 
 int FUNC5 (struct hllhdr*) ; 
 int FUNC6 (struct hllhdr*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct hllhdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,struct hllhdr) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,char*) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ ,TYPE_7__*,TYPE_1__*) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  invalid_hll_err ; 
 scalar_t__ FUNC17 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC18 (int /*<<< orphan*/ ,TYPE_7__*) ; 
 struct hllhdr* FUNC19 (struct hllhdr*,char*,int,...) ; 
 struct hllhdr* FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct hllhdr*) ; 
 int /*<<< orphan*/  FUNC22 (struct hllhdr*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 struct hllhdr* FUNC24 (struct hllhdr*,char*) ; 
 TYPE_4__ server ; 
 TYPE_3__ shared ; 
 int /*<<< orphan*/  FUNC25 (char*,char*) ; 

void FUNC26(client *c) {
    char *cmd = c->argv[1]->ptr;
    struct hllhdr *hdr;
    robj *o;
    int j;

    o = FUNC18(c->db,c->argv[2]);
    if (o == NULL) {
        FUNC10(c,"The specified key does not exist");
        return;
    }
    if (FUNC17(c,o) != C_OK) return;
    o = FUNC15(c->db,c->argv[2],o);
    hdr = o->ptr;

    /* PFDEBUG GETREG <key> */
    if (!FUNC25(cmd,"getreg")) {
        if (c->argc != 3) goto arityerr;

        if (hdr->encoding == HLL_SPARSE) {
            if (FUNC16(o) == C_ERR) {
                FUNC13(c,FUNC23(invalid_hll_err));
                return;
            }
            server.dirty++; /* Force propagation on encoding change. */
        }

        hdr = o->ptr;
        FUNC8(c,HLL_REGISTERS);
        for (j = 0; j < HLL_REGISTERS; j++) {
            uint8_t val;

            FUNC0(val,hdr->registers,j);
            FUNC12(c,val);
        }
    }
    /* PFDEBUG DECODE <key> */
    else if (!FUNC25(cmd,"decode")) {
        if (c->argc != 3) goto arityerr;

        uint8_t *p = o->ptr, *end = p+FUNC22(o->ptr);
        sds decoded = FUNC20();

        if (hdr->encoding != HLL_SPARSE) {
            FUNC10(c,"HLL encoding is not sparse");
            return;
        }

        p += HLL_HDR_SIZE;
        while(p < end) {
            int runlen, regval;

            if (FUNC2(p)) {
                runlen = FUNC6(p);
                p++;
                decoded = FUNC19(decoded,"z:%d ",runlen);
            } else if (FUNC1(p)) {
                runlen = FUNC5(p);
                p += 2;
                decoded = FUNC19(decoded,"Z:%d ",runlen);
            } else {
                runlen = FUNC3(p);
                regval = FUNC4(p);
                p++;
                decoded = FUNC19(decoded,"v:%d,%d ",regval,runlen);
            }
        }
        decoded = FUNC24(decoded," ");
        FUNC9(c,decoded,FUNC22(decoded));
        FUNC21(decoded);
    }
    /* PFDEBUG ENCODING <key> */
    else if (!FUNC25(cmd,"encoding")) {
        char *encodingstr[2] = {"dense","sparse"};
        if (c->argc != 3) goto arityerr;

        FUNC14(c,encodingstr[hdr->encoding]);
    }
    /* PFDEBUG TODENSE <key> */
    else if (!FUNC25(cmd,"todense")) {
        int conv = 0;
        if (c->argc != 3) goto arityerr;

        if (hdr->encoding == HLL_SPARSE) {
            if (FUNC16(o) == C_ERR) {
                FUNC13(c,FUNC23(invalid_hll_err));
                return;
            }
            conv = 1;
            server.dirty++; /* Force propagation on encoding change. */
        }
        FUNC7(c,conv ? shared.cone : shared.czero);
    } else {
        FUNC11(c,"Unknown PFDEBUG subcommand '%s'", cmd);
    }
    return;

arityerr:
    FUNC11(c,
        "Wrong number of arguments for the '%s' subcommand",cmd);
}