#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* tccps; } ;
typedef  TYPE_1__ opj_tcp_t ;
struct TYPE_8__ {int csty; int numresolutions; int cblkw; int cblkh; int cblksty; int qmfbid; int* prch; int* prcw; } ;
typedef  TYPE_2__ opj_tccp_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int J2K_CP_CSTY_PRT ; 
 scalar_t__ derived ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,...) ; 
 TYPE_1__* j2k_default_tcp ; 
 scalar_t__ notes ; 
 scalar_t__ raw ; 
 scalar_t__ FUNC1 (TYPE_2__*,TYPE_2__*) ; 

void FUNC2(FILE* xmlout, opj_tcp_t *tcp,
                       int numcomps) /* Optional in main & tile-part headers */
{
    /* Uses global j2k_default_tcp */
    opj_tccp_t *tccp, *firstcomp_tccp;
    int i, compno;
    char spaces[13] = "            "; /* 12 spaces if tilepart*/
    char* s = spaces;
    if (tcp == j2k_default_tcp) {
        s++;
        s++; /* shorten s to 10 spaces if main */
    }

    firstcomp_tccp = &(tcp->tccps[0]);
    /* Internal data structure tccp defines separate defaults for each component, set from main */
    /* default, then selectively overwritten. */
    /* Compare j2k_read_cox(...) */
    /* We don't really know which was the default, and which were not */
    /* Let's pretend that [0] is the default and all others are not */
    if (notes) {
        FUNC0(xmlout,
                "%s<!-- mj2_to_metadata implementation always reports component[0] as using default COD, -->\n",
                s);
        if (tcp == j2k_default_tcp) {
            FUNC0(xmlout,
                    "%s<!-- and any other component, with main-header style values different from [0], as COC. -->\n",
                    s);
        } else {
            FUNC0(xmlout,
                    "%s<!-- and any other component, with tile-part-header style values different from [0], as COC. -->\n",
                    s);
        }
    }
    for (compno = 1; compno < numcomps;
            compno++) { /* spec says components are zero-based */
        tccp = &tcp->tccps[compno];
        if (FUNC1(firstcomp_tccp, tccp)) {
            continue;
        }

        /*  Alignments:          "      < < < < <   To help maintain xml pretty-printing */
        FUNC0(xmlout,      "%s<CodingStyleComponent Marker=\"COC\">\n",
                s); /* Optional in main header, at most 1 per component */
        if (notes) {
            FUNC0(xmlout,
                    "%s  <!-- See Ccoc below for zero-based component number. -->\n", s);
        }
        /* Overrides the main COD for the specific component */
        /* Not retained or of interest: Lcod */
        FUNC0(xmlout,      "%s  <Scoc>0x%02x</Scoc>\n", s, tccp->csty); /* 1 byte */
        if (notes) {
            FUNC0(xmlout,    "%s  <!-- Scoc defines entropy coder precincts: -->\n", s);
            FUNC0(xmlout,
                    "%s  <!--   0 = maximum, namely (PPx=15, PPy=15); 1 = precincts defined below. -->\n",
                    s);
        }
        FUNC0(xmlout,      "%s  <Ccoc>%d</Ccoc>\n", s, compno); /* 1 or 2 bytes */
        /* Unfortunately compo isn't retained in j2k_read_coc:  compno = cio_read(j2k_img->numcomps <= 256 ? 1 : 2);    /* Ccoc */
        /*if(j2k_img_numcomps <=256)
          component is 1 byte
        else
          compno is 2 byte */

        /* This code will compile only if declaration of j2k_default_tcp is changed from static (to implicit extern) in j2k.c */
        FUNC0(xmlout,      "%s  <SPcoc>\n", s);
        FUNC0(xmlout,
                "%s    <NumberOfDecompositionLevels>%d</NumberOfDecompositionLevels>\n", s,
                tccp->numresolutions - 1); /* 1 byte, SPcox (D) */
        FUNC0(xmlout,      "%s    <CodeblockWidth>%d</CodeblockWidth>\n", s,
                tccp->cblkw - 2);    /* 1 byte, SPcox (E) */
        FUNC0(xmlout,      "%s    <CodeblockHeight>%d</CodeblockHeight>\n", s,
                tccp->cblkh - 2);  /* 1 byte, SPcox (F) */
        if (notes) {
            FUNC0(xmlout,
                    "%s    <!-- CBW and CBH are non-negative, and summed cannot exceed 8 -->\n", s);
            FUNC0(xmlout,    "%s    <!-- Codeblock dimension is 2^(value + 2) -->\n", s);
        }
        FUNC0(xmlout,      "%s    <CodeblockStyle>0x%02x</CodeblockStyle>\n", s,
                tccp->cblksty);  /* 1 byte, SPcox (G) */
        if (notes) {
            FUNC0(xmlout,
                    "%s    <!-- For CodeblockStyle, bits mean (with value 1=feature on, 0=off): -->\n",
                    s);
            FUNC0(xmlout,
                    "%s    <!-- bit 0: Selective arithmetic coding bypass. -->\n", s);
            FUNC0(xmlout,
                    "%s    <!-- bit 1: Reset context probabilities on coding pass boundaries. -->\n",
                    s);
            FUNC0(xmlout,    "%s    <!-- bit 2: Termination on each coding pass. -->\n",
                    s);
            FUNC0(xmlout,    "%s    <!-- bit 3: Vertically causal context. -->\n", s);
            FUNC0(xmlout,    "%s    <!-- bit 4: Predictable termination. -->\n", s);
            FUNC0(xmlout,    "%s    <!-- bit 5: Segmentation symbols are used. -->\n", s);
        }
        FUNC0(xmlout,      "%s    <Transformation>%d</Transformation>\n", s,
                tccp->qmfbid);   /* 1 byte, SPcox (H) */
        if (notes) {
            FUNC0(xmlout,
                    "%s    <!-- For Transformation, 0=\"9-7 irreversible filter\", 1=\"5-3 reversible filter\" -->\n",
                    s);
        }
        if (tccp->csty & J2K_CP_CSTY_PRT) {
            FUNC0(xmlout,    "%s    <PrecinctSize>\n", s); /* 1 byte, SPcox (I_i) */
            if (notes) {
                FUNC0(xmlout,
                        "%s      <!-- These are size exponents PPx and PPy. May be zero only for first level (aka N(L)LL subband)-->\n",
                        s);
            }
            for (i = 0; i < tccp->numresolutions - 1;
                    i++) { /* subtract 1 to get # of decomposition levels */
                FUNC0(xmlout,  "%s      <PrecinctHeightAndWidth  ResolutionLevel=\"%d\">\n",
                        s, i);
                if (raw) {
                    FUNC0(xmlout, "%s        <AsHex>0x%02x</AsHex>\n", s,
                            (tccp->prch[i] << 4) | tccp->prcw[i]);    /* packed into 1 byte, SPcox (G) */
                }
                if (derived) {
                    FUNC0(xmlout, "%s        <WidthAsDecimal>%d</WidthAsDecimal>\n", s,
                            tccp->prcw[i]);
                    FUNC0(xmlout, "%s        <HeightAsDecimal>%d</HeightAsDecimal>\n", s,
                            tccp->prch[i]);
                }
                FUNC0(xmlout,  "%s      </PrecinctHeightAndWidth>\n", s, i);
            }
            FUNC0(xmlout,    "%s    </PrecinctSize>\n", s); /* 1 byte, SPcox (I_i) */
        }
        FUNC0(xmlout,      "%s  </SPcoc>\n", s);
        FUNC0(xmlout,      "%s</CodingStyleComponent>\n", s);
    }
}