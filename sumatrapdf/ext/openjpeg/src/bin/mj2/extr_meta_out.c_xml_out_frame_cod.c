
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int csty; int prg; int numlayers; int mct; TYPE_2__* tccps; } ;
typedef TYPE_1__ opj_tcp_t ;
struct TYPE_6__ {int numresolutions; int cblkw; int cblkh; int cblksty; int qmfbid; int csty; int* prch; int* prcw; } ;
typedef TYPE_2__ opj_tccp_t ;
typedef int FILE ;


 int J2K_CP_CSTY_PRT ;
 scalar_t__ derived ;
 int fprintf (int *,char*,char*,...) ;
 TYPE_1__* j2k_default_tcp ;
 scalar_t__ notes ;
 scalar_t__ raw ;

void xml_out_frame_cod(FILE* xmlout, opj_tcp_t *tcp)
{




    opj_tccp_t *tccp;
    int i;
    char spaces[13] = "            ";
    char* s = spaces;
    if (tcp == j2k_default_tcp) {
        s++;
        s++;
    }
    tccp = &(tcp->tccps[0]);

    fprintf(xmlout, "%s<CodingStyleDefault Marker=\"COD\">\n",
            s);

    fprintf(xmlout, "%s  <Scod>0x%02x</Scod>\n", s, tcp->csty);
    if (notes) {
        fprintf(xmlout,
                "%s  <!-- For Scod, specific bits mean (where bit 0 is lowest or rightmost): -->\n",
                s);
        fprintf(xmlout, "%s  <!-- bit 0: Defines entropy coder precincts -->\n", s);
        fprintf(xmlout,
                "%s  <!--        0 = (PPx=15, PPy=15); 1 = precincts defined below. -->\n", s);
        fprintf(xmlout, "%s  <!-- bit 1: 1 = SOP marker may be used; 0 = not. -->\n",
                s);
        fprintf(xmlout, "%s  <!-- bit 2: 1 = EPH marker may be used; 0 = not. -->\n",
                s);
    }
    fprintf(xmlout, "%s  <SGcod>\n", s);
    fprintf(xmlout, "%s    <ProgressionOrder>%d</ProgressionOrder>\n", s,
            tcp->prg);
    if (notes) {
        fprintf(xmlout, "%s    <!-- Defined Progression Order Values are: -->\n", s);
        fprintf(xmlout,
                "%s    <!-- 0 = LRCP; 1 = RLCP; 2 = RPCL; 3 = PCRL; 4 = CPRL -->\n", s);
        fprintf(xmlout,
                "%s    <!-- where L = \"layer\", R = \"resolution level\", C = \"component\", P = \"position\". -->\n",
                s);
    }
    fprintf(xmlout, "%s    <NumberOfLayers>%d</NumberOfLayers>\n", s,
            tcp->numlayers);
    fprintf(xmlout,
            "%s    <MultipleComponentTransformation>%d</MultipleComponentTransformation>\n",
            s, tcp->mct);
    if (notes) {
        fprintf(xmlout,
                "%s    <!-- For MCT, 0 = none, 1 = transform first 3 components for efficiency, per Part I Annex G -->\n",
                s);
    }
    fprintf(xmlout, "%s  </SGcod>\n", s);

    fprintf(xmlout, "%s  <SPcod>\n", s);



    fprintf(xmlout,
            "%s    <NumberOfDecompositionLevels>%d</NumberOfDecompositionLevels>\n", s,
            tccp->numresolutions - 1);
    fprintf(xmlout, "%s    <CodeblockWidth>%d</CodeblockWidth>\n", s,
            tccp->cblkw - 2);
    fprintf(xmlout, "%s    <CodeblockHeight>%d</CodeblockHeight>\n", s,
            tccp->cblkh - 2);
    if (notes) {
        fprintf(xmlout,
                "%s    <!-- CBW and CBH are non-negative, and summed cannot exceed 8 -->\n", s);
        fprintf(xmlout, "%s    <!-- Codeblock dimension is 2^(value + 2) -->\n", s);
    }
    fprintf(xmlout, "%s    <CodeblockStyle>0x%02x</CodeblockStyle>\n", s,
            tccp->cblksty);
    if (notes) {
        fprintf(xmlout,
                "%s    <!-- For CodeblockStyle, bits mean (with value 1=feature on, 0=off): -->\n",
                s);
        fprintf(xmlout,
                "%s    <!-- bit 0: Selective arithmetic coding bypass. -->\n", s);
        fprintf(xmlout,
                "%s    <!-- bit 1: Reset context probabilities on coding pass boundaries. -->\n",
                s);
        fprintf(xmlout, "%s    <!-- bit 2: Termination on each coding pass. -->\n",
                s);
        fprintf(xmlout, "%s    <!-- bit 3: Vertically causal context. -->\n", s);
        fprintf(xmlout, "%s    <!-- bit 4: Predictable termination. -->\n", s);
        fprintf(xmlout, "%s    <!-- bit 5: Segmentation symbols are used. -->\n", s);
    }
    fprintf(xmlout, "%s    <Transformation>%d</Transformation>\n", s,
            tccp->qmfbid);
    if (notes) {
        fprintf(xmlout,
                "%s    <!-- For Transformation, 0=\"9-7 irreversible filter\", 1=\"5-3 reversible filter\" -->\n",
                s);
    }
    if (tccp->csty & J2K_CP_CSTY_PRT) {
        fprintf(xmlout, "%s    <PrecinctSize>\n", s);
        if (notes) {
            fprintf(xmlout,
                    "%s    <!-- These are size exponents PPx and PPy. May be zero only for first level (aka N(L)LL subband)-->\n",
                    s);
        }
        for (i = 0; i < tccp->numresolutions; i++) {
            fprintf(xmlout, "%s      <PrecinctHeightAndWidth  ResolutionLevel=\"%d\">\n",
                    s, i);
            if (raw) {
                fprintf(xmlout, "%s        <AsHex>0x%02x</AsHex>\n", s,
                        (tccp->prch[i] << 4) | tccp->prcw[i]);
            }
            if (derived) {
                fprintf(xmlout, "%s        <WidthAsDecimal>%d</WidthAsDecimal>\n", s,
                        tccp->prcw[i]);
                fprintf(xmlout, "%s        <HeightAsDecimal>%d</HeightAsDecimal>\n", s,
                        tccp->prch[i]);
            }
            fprintf(xmlout, "%s      </PrecinctHeightAndWidth>\n", s, i);
        }
        fprintf(xmlout, "%s    </PrecinctSize>\n", s);
    }
    fprintf(xmlout, "%s  </SPcod>\n", s);
    fprintf(xmlout, "%s</CodingStyleDefault>\n", s);
}
