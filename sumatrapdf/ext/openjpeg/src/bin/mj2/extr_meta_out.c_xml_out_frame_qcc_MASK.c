#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* tccps; } ;
typedef  TYPE_2__ opj_tcp_t ;
struct TYPE_10__ {int numgbits; int qntsty; TYPE_1__* stepsizes; } ;
typedef  TYPE_3__ opj_tccp_t ;
struct TYPE_8__ {int expn; int mant; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  J2K_CCP_QNTSTY_NOQNT 129 
#define  J2K_CCP_QNTSTY_SIQNT 128 
 int J2K_MAXBANDS ; 
 scalar_t__ derived ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,...) ; 
 TYPE_2__* j2k_default_tcp ; 
 scalar_t__ notes ; 
 scalar_t__ raw ; 
 scalar_t__ FUNC1 (TYPE_3__*,TYPE_3__*) ; 

void FUNC2(FILE* xmlout, opj_tcp_t *tcp, int numcomps)
{
    /* Uses global j2k_default_tcp */
    /* This code will compile only if declaration of j2k_default_tcp is changed from static (to implicit extern) in j2k.c */
    opj_tccp_t *tccp, *firstcomp_tccp;
    int bandno, numbands;
    int compno;
    char spaces[13] = "            "; /* 12 spaces if tilepart*/
    char* s = spaces;
    if (tcp == j2k_default_tcp) {
        s++;
        s++; /* shorten s to 10 spaces if main */
    }

    firstcomp_tccp = &(tcp->tccps[0]);
    /* Internal data structure tccp defines separate defaults for each component, set from main */
    /* default, then selectively overwritten. */
    /* Compare j2k_read_qcx(...) */
    /* We don't really know which was the default, and which were not */
    /* Let's pretend that [0] is the default and all others are not */
    if (notes) {
        FUNC0(xmlout,
                "%s<!-- mj2_to_metadata implementation always reports component[0] as using default QCD, -->\n",
                s);
        if (tcp == j2k_default_tcp) {
            FUNC0(xmlout,
                    "%s<!-- and any other component, with main-header quantization values different from [0], as QCC. -->\n",
                    s);
        } else {
            FUNC0(xmlout,
                    "%s<!-- and any other component, with tile-part-header quantization values different from [0], as QCC. -->\n",
                    s);
        }
    }
    for (compno = 1; compno < numcomps;
            compno++) { /* spec says components are zero-based */
        tccp = &(tcp->tccps[compno]);
        if (FUNC1(firstcomp_tccp, tccp)) {
            continue;
        }

        /* Compare j2k_read_qcx */
        FUNC0(xmlout,
                "%s<QuantizationComponent Marker=\"QCC\" Component=\"%d\">\n", s,
                compno); /* Required in main header, single occurrence */
        tccp = &j2k_default_tcp->tccps[0];
        /* Not retained or perhaps of interest: Lqcd   It maybe can be calculated.  */
        FUNC0(xmlout,      "%s  <Sqcc>\n", s);        /* 1 byte */
        if (notes) {
            FUNC0(xmlout,    "%s  <!-- Quantization style for this component. -->\n", s);
        }
        if (raw) {
            FUNC0(xmlout,    "%s    <AsHex>0x%02x</AsHex>\n", s,
                    (tccp->numgbits) << 5 | tccp->qntsty);
        }
        if (derived) {
            FUNC0(xmlout,    "%s    <QuantizationStyle>%d</QuantizationStyle>\n", s,
                    tccp->qntsty);
        }
        if (notes) {
            FUNC0(xmlout,
                    "%s    <!-- Quantization style (in Sqcc's low 5 bits) may be: -->\n", s);
            FUNC0(xmlout,    "%s    <!--   0 = No quantization. SPqcc size = 8 bits-->\n",
                    s);
            FUNC0(xmlout,
                    "%s    <!--   1 = Scalar derived (values signaled for N(L)LL subband only). Use Eq. E.5. SPqcc size = 16. -->\n",
                    s);
            FUNC0(xmlout,
                    "%s    <!--   2 = Scalar expounded (values signaled for each subband). SPqcc size = 16. -->\n",
                    s);
        }
        if (derived) {
            FUNC0(xmlout,    "%s    <NumberOfGuardBits>%d</NumberOfGuardBits>\n", s,
                    tccp->numgbits);
        }
        if (notes) {
            FUNC0(xmlout,
                    "%s    <!-- 0-7 guard bits allowed (stored in Sqcc's high 3 bits) -->\n", s);
        }
        FUNC0(xmlout,      "%s  </Sqcc>\n", s);

        /* Problem: numbands in some cases is calculated from len, which is not retained or available here at this time */
        /* So we'll just dump all internal values */
        FUNC0(xmlout,      "%s  <SPqcc>\n", s);
        switch (tccp->qntsty) {
        case J2K_CCP_QNTSTY_NOQNT:
            numbands = J2K_MAXBANDS; /* should be: numbands = len - 1; */
            /* Better: IMAGINE numbands = tccp->stepsize_numbands; */

            /* Instead look for first zero exponent, quit there.  Adequate? */
            FUNC0(xmlout,    "%s    <ReversibleStepSizeValue>\n", s);
            if (notes) {
                FUNC0(xmlout,
                        "%s    <!-- Current mj2_to_metadata implementation dumps entire internal table, -->\n",
                        s);
                FUNC0(xmlout,
                        "%s    <!-- until an exponent with zero value is reached. -->\n", s);
                FUNC0(xmlout,
                        "%s    <!-- Exponent epsilon(b) of reversible dynamic range. -->\n", s);
                FUNC0(xmlout,
                        "%s    <!-- Hex value is as stored, in high-order 5 bits. -->\n", s);
            }
            for (bandno = 0; bandno < numbands; bandno++) {
                if (tccp->stepsizes[bandno].expn == 0) {
                    break;    /* Remove this once we have real numbands */
                }
                FUNC0(xmlout,  "%s      <Exponent Subband=\"%d\">\n", s, bandno);
                if (raw) {
                    FUNC0(xmlout, "%s        <AsHex>0x%02x</AsHex>\n", s,
                            tccp->stepsizes[bandno].expn << 3);
                }
                if (derived) {
                    FUNC0(xmlout, "%s        <AsDecimal>%d</AsDecimal>\n", s,
                            tccp->stepsizes[bandno].expn);
                }
                FUNC0(xmlout,  "%s      </Exponent>\n", s);
            }
            FUNC0(xmlout,    "%s    </ReversibleStepSizeValue>\n", s);
            break;
        case J2K_CCP_QNTSTY_SIQNT:
            /* numbands = 1; */
            FUNC0(xmlout,    "%s    <QuantizationStepSizeValues>\n", s);
            if (notes) {
                FUNC0(xmlout,
                        "%s    <!-- For irreversible transformation only.  See Part I Annex E Equation E.3 -->\n",
                        s);
            }
            FUNC0(xmlout,    "%s      <QuantizationValuesForSubband0>\n", s);
            if (notes) {
                FUNC0(xmlout,  "%s      <!-- For N(L)LL subband: >\n", s);
            }
            if (raw) {
                FUNC0(xmlout,  "%s        <AsHex>0x%02x</AsHex>\n", s,
                        (tccp->stepsizes[0].expn << 11) | tccp->stepsizes[0].mant);
            }
            if (derived) {
                FUNC0(xmlout,  "%s        <Exponent>%d</Exponent>\n", s,
                        tccp->stepsizes[0].expn);
                FUNC0(xmlout,  "%s        <Mantissa>%d</Mantissa>\n", s,
                        tccp->stepsizes[0].mant);
            }
            FUNC0(xmlout,    "%s      </QuantizationValuesForSubband0>\n", s);
            if (notes) {
                FUNC0(xmlout,
                        "%s      <!-- Exponents for subbands beyond 0 are not from header, but calculated per Eq. E.5 -->\n",
                        s);
                FUNC0(xmlout,
                        "%s      <!-- The mantissa for all subbands is the same, given by the value above. -->\n",
                        s);
                FUNC0(xmlout,
                        "%s      <!-- Current mj2_to_metadata implementation dumps entire internal table, -->\n",
                        s);
                FUNC0(xmlout,
                        "%s      <!-- until a subband with exponent of zero value is reached. -->\n",
                        s);
            }

            for (bandno = 1; bandno < J2K_MAXBANDS; bandno++) {
                if (tccp->stepsizes[bandno].expn == 0) {
                    break;
                }

                FUNC0(xmlout,
                        "%s      <CalculatedExponent Subband=\"%d\">%d</CalculatedExponent>\n", s,
                        bandno, tccp->stepsizes[bandno].expn);
            }
            FUNC0(xmlout,    "%s    </QuantizationStepSizeValues>\n", s);
            break;

        default: /* J2K_CCP_QNTSTY_SEQNT */
            numbands = J2K_MAXBANDS; /* should be: (len - 1) / 2;*/
            /* Better: IMAGINE numbands = tccp->stepsize_numbands; */
            FUNC0(xmlout,    "%s    <QuantizationStepSizeValues>\n", s);
            if (notes) {
                FUNC0(xmlout,
                        "%s    <!-- For irreversible transformation only.  See Part I Annex E Equation E.3 -->\n",
                        s);
                FUNC0(xmlout,
                        "%s    <!-- Current mj2_to_metadata implementation dumps entire internal table, -->\n",
                        s);
                FUNC0(xmlout,
                        "%s    <!-- until a subband with mantissa and exponent of zero values is reached. -->\n",
                        s);
            }
            for (bandno = 0; bandno < numbands; bandno++) {
                if (tccp->stepsizes[bandno].expn == 0 && tccp->stepsizes[bandno].mant == 0) {
                    break;    /* Remove this once we have real numbands count */
                }
                FUNC0(xmlout,  "%s      <QuantizationValues Subband=\"%d\">\n", s, bandno);
                if (raw) {
                    FUNC0(xmlout, "%s        <AsHex>0x%02x</AsHex>\n", s,
                            (tccp->stepsizes[bandno].expn << 11) | tccp->stepsizes[bandno].mant);
                }
                if (derived) {
                    FUNC0(xmlout, "%s        <Exponent>%d</Exponent>\n", s,
                            tccp->stepsizes[bandno].expn);
                    FUNC0(xmlout, "%s        <Mantissa>%d</Mantissa>\n", s,
                            tccp->stepsizes[bandno].mant);
                }
                FUNC0(xmlout,  "%s      </QuantizationValues>\n", s);
            }
            FUNC0(xmlout,    "%s    </QuantizationStepSizeValues>\n", s);
            break;
        } /* switch */
        FUNC0(xmlout,      "%s  </SPqcc>\n", s);
        FUNC0(xmlout,      "%s</QuantizationComponent>\n", s);
    }
    /*  Alignments:          "    < < < < <   To help maintain xml pretty-printing */
}