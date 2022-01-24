#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int csty; int prg; int numlayers; int mct; TYPE_2__* tccps; } ;
typedef  TYPE_1__ opj_tcp_t ;
struct TYPE_6__ {int numresolutions; int cblkw; int cblkh; int cblksty; int qmfbid; int csty; int* prch; int* prcw; } ;
typedef  TYPE_2__ opj_tccp_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int J2K_CP_CSTY_PRT ; 
 scalar_t__ derived ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,...) ; 
 TYPE_1__* j2k_default_tcp ; 
 scalar_t__ notes ; 
 scalar_t__ raw ; 

void FUNC1(FILE* xmlout, opj_tcp_t *tcp)
{
    /* Could be called with tcp = &j2k_default_tcp;
    /* Or, for tile-part header, with &j2k_cp->tcps[j2k_curtileno]
    /*  Alignment for main:"          < < < <   To help maintain xml pretty-printing */
    /*  Alignment for tile:"            < < <   To help maintain xml pretty-printing */
    opj_tccp_t *tccp;
    int i;
    char spaces[13] = "            "; /* 12 spaces if tilepart*/
    char* s = spaces;
    if (tcp == j2k_default_tcp) {
        s++;
        s++; /* shorten s to 10 spaces if main */
    }
    tccp = &(tcp->tccps[0]);

    FUNC0(xmlout,      "%s<CodingStyleDefault Marker=\"COD\">\n",
            s); /* Required in main header */
    /* Not retained or of interest: Lcod */
    FUNC0(xmlout,      "%s  <Scod>0x%02x</Scod>\n", s, tcp->csty); /* 1 byte */
    if (notes) {
        FUNC0(xmlout,
                "%s  <!-- For Scod, specific bits mean (where bit 0 is lowest or rightmost): -->\n",
                s);
        FUNC0(xmlout,    "%s  <!-- bit 0: Defines entropy coder precincts -->\n", s);
        FUNC0(xmlout,
                "%s  <!--        0 = (PPx=15, PPy=15); 1 = precincts defined below. -->\n", s);
        FUNC0(xmlout,    "%s  <!-- bit 1: 1 = SOP marker may be used; 0 = not. -->\n",
                s);
        FUNC0(xmlout,    "%s  <!-- bit 2: 1 = EPH marker may be used; 0 = not. -->\n",
                s);
    }
    FUNC0(xmlout,      "%s  <SGcod>\n", s);
    FUNC0(xmlout,      "%s    <ProgressionOrder>%d</ProgressionOrder>\n", s,
            tcp->prg); /* 1 byte, SGcod (A) */
    if (notes) {
        FUNC0(xmlout,    "%s    <!-- Defined Progression Order Values are: -->\n", s);
        FUNC0(xmlout,
                "%s    <!-- 0 = LRCP; 1 = RLCP; 2 = RPCL; 3 = PCRL; 4 = CPRL -->\n", s);
        FUNC0(xmlout,
                "%s    <!-- where L = \"layer\", R = \"resolution level\", C = \"component\", P = \"position\". -->\n",
                s);
    }
    FUNC0(xmlout,      "%s    <NumberOfLayers>%d</NumberOfLayers>\n", s,
            tcp->numlayers); /* 2 bytes, SGcod (B) */
    FUNC0(xmlout,
            "%s    <MultipleComponentTransformation>%d</MultipleComponentTransformation>\n",
            s, tcp->mct); /* 1 byte, SGcod (C).  More or less boolean */
    if (notes) {
        FUNC0(xmlout,
                "%s    <!-- For MCT, 0 = none, 1 = transform first 3 components for efficiency, per Part I Annex G -->\n",
                s);
    }
    FUNC0(xmlout,      "%s  </SGcod>\n", s);
    /* This code will compile only if declaration of j2k_default_tcp is changed from static (to implicit extern) in j2k.c */
    FUNC0(xmlout,      "%s  <SPcod>\n", s);
    /* Internal data structure tccp defines separate defaults for each component, but they all get the same values */
    /* So we only have to report the first component's values here. */
    /* Compare j2k_read_cox(...) */
    FUNC0(xmlout,
            "%s    <NumberOfDecompositionLevels>%d</NumberOfDecompositionLevels>\n", s,
            tccp->numresolutions - 1);   /* 1 byte, SPcox (D) */
    FUNC0(xmlout,      "%s    <CodeblockWidth>%d</CodeblockWidth>\n", s,
            tccp->cblkw - 2);  /* 1 byte, SPcox (E) */
    FUNC0(xmlout,      "%s    <CodeblockHeight>%d</CodeblockHeight>\n", s,
            tccp->cblkh - 2);    /* 1 byte, SPcox (F) */
    if (notes) {
        FUNC0(xmlout,
                "%s    <!-- CBW and CBH are non-negative, and summed cannot exceed 8 -->\n", s);
        FUNC0(xmlout,    "%s    <!-- Codeblock dimension is 2^(value + 2) -->\n", s);
    }
    FUNC0(xmlout,      "%s    <CodeblockStyle>0x%02x</CodeblockStyle>\n", s,
            tccp->cblksty);    /* 1 byte, SPcox (G) */
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
            tccp->qmfbid); /* 1 byte, SPcox (H) */
    if (notes) {
        FUNC0(xmlout,
                "%s    <!-- For Transformation, 0=\"9-7 irreversible filter\", 1=\"5-3 reversible filter\" -->\n",
                s);
    }
    if (tccp->csty & J2K_CP_CSTY_PRT) {
        FUNC0(xmlout,    "%s    <PrecinctSize>\n", s); /* 1 byte, SPcox (I_i) */
        if (notes) {
            FUNC0(xmlout,
                    "%s    <!-- These are size exponents PPx and PPy. May be zero only for first level (aka N(L)LL subband)-->\n",
                    s);
        }
        for (i = 0; i < tccp->numresolutions; i++) {
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
    FUNC0(xmlout,      "%s  </SPcod>\n", s);
    FUNC0(xmlout,      "%s</CodingStyleDefault>\n", s);
}