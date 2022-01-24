#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int csty; int prg; int numlayers; int mct; TYPE_3__* tccps; } ;
typedef  TYPE_2__ opj_tcp_t ;
struct TYPE_7__ {int csty; int numresolutions; int cblkw; int cblkh; int cblksty; int qmfbid; int* prcw; int* prch; int qntsty; int numgbits; int roishift; TYPE_1__* stepsizes; } ;
typedef  TYPE_3__ opj_tccp_t ;
struct TYPE_5__ {int mant; int expn; } ;
typedef  size_t OPJ_UINT32 ;
typedef  size_t OPJ_INT32 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int J2K_CCP_QNTSTY_SIQNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void FUNC1(opj_tcp_t * l_default_tile,
                                   OPJ_INT32 numcomps, FILE* out_stream)
{
    if (l_default_tile) {
        OPJ_INT32 compno;

        FUNC0(out_stream, "\t default tile {\n");
        FUNC0(out_stream, "\t\t csty=%#x\n", l_default_tile->csty);
        FUNC0(out_stream, "\t\t prg=%#x\n", l_default_tile->prg);
        FUNC0(out_stream, "\t\t numlayers=%d\n", l_default_tile->numlayers);
        FUNC0(out_stream, "\t\t mct=%x\n", l_default_tile->mct);

        for (compno = 0; compno < numcomps; compno++) {
            opj_tccp_t *l_tccp = &(l_default_tile->tccps[compno]);
            OPJ_UINT32 resno;
            OPJ_INT32 bandno, numbands;

            /* coding style*/
            FUNC0(out_stream, "\t\t comp %d {\n", compno);
            FUNC0(out_stream, "\t\t\t csty=%#x\n", l_tccp->csty);
            FUNC0(out_stream, "\t\t\t numresolutions=%d\n", l_tccp->numresolutions);
            FUNC0(out_stream, "\t\t\t cblkw=2^%d\n", l_tccp->cblkw);
            FUNC0(out_stream, "\t\t\t cblkh=2^%d\n", l_tccp->cblkh);
            FUNC0(out_stream, "\t\t\t cblksty=%#x\n", l_tccp->cblksty);
            FUNC0(out_stream, "\t\t\t qmfbid=%d\n", l_tccp->qmfbid);

            FUNC0(out_stream, "\t\t\t preccintsize (w,h)=");
            for (resno = 0; resno < l_tccp->numresolutions; resno++) {
                FUNC0(out_stream, "(%d,%d) ", l_tccp->prcw[resno], l_tccp->prch[resno]);
            }
            FUNC0(out_stream, "\n");

            /* quantization style*/
            FUNC0(out_stream, "\t\t\t qntsty=%d\n", l_tccp->qntsty);
            FUNC0(out_stream, "\t\t\t numgbits=%d\n", l_tccp->numgbits);
            FUNC0(out_stream, "\t\t\t stepsizes (m,e)=");
            numbands = (l_tccp->qntsty == J2K_CCP_QNTSTY_SIQNT) ? 1 :
                       (OPJ_INT32)l_tccp->numresolutions * 3 - 2;
            for (bandno = 0; bandno < numbands; bandno++) {
                FUNC0(out_stream, "(%d,%d) ", l_tccp->stepsizes[bandno].mant,
                        l_tccp->stepsizes[bandno].expn);
            }
            FUNC0(out_stream, "\n");

            /* RGN value*/
            FUNC0(out_stream, "\t\t\t roishift=%d\n", l_tccp->roishift);

            FUNC0(out_stream, "\t\t }\n");
        } /*end of component of default tile*/
        FUNC0(out_stream, "\t }\n"); /*end of default tile*/
    }
}