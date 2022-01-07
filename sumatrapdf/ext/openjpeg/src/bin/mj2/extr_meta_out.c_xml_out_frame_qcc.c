
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* tccps; } ;
typedef TYPE_2__ opj_tcp_t ;
struct TYPE_10__ {int numgbits; int qntsty; TYPE_1__* stepsizes; } ;
typedef TYPE_3__ opj_tccp_t ;
struct TYPE_8__ {int expn; int mant; } ;
typedef int FILE ;




 int J2K_MAXBANDS ;
 scalar_t__ derived ;
 int fprintf (int *,char*,char*,...) ;
 TYPE_2__* j2k_default_tcp ;
 scalar_t__ notes ;
 scalar_t__ raw ;
 scalar_t__ same_component_quantization (TYPE_3__*,TYPE_3__*) ;

void xml_out_frame_qcc(FILE* xmlout, opj_tcp_t *tcp, int numcomps)
{


    opj_tccp_t *tccp, *firstcomp_tccp;
    int bandno, numbands;
    int compno;
    char spaces[13] = "            ";
    char* s = spaces;
    if (tcp == j2k_default_tcp) {
        s++;
        s++;
    }

    firstcomp_tccp = &(tcp->tccps[0]);





    if (notes) {
        fprintf(xmlout,
                "%s<!-- mj2_to_metadata implementation always reports component[0] as using default QCD, -->\n",
                s);
        if (tcp == j2k_default_tcp) {
            fprintf(xmlout,
                    "%s<!-- and any other component, with main-header quantization values different from [0], as QCC. -->\n",
                    s);
        } else {
            fprintf(xmlout,
                    "%s<!-- and any other component, with tile-part-header quantization values different from [0], as QCC. -->\n",
                    s);
        }
    }
    for (compno = 1; compno < numcomps;
            compno++) {
        tccp = &(tcp->tccps[compno]);
        if (same_component_quantization(firstcomp_tccp, tccp)) {
            continue;
        }


        fprintf(xmlout,
                "%s<QuantizationComponent Marker=\"QCC\" Component=\"%d\">\n", s,
                compno);
        tccp = &j2k_default_tcp->tccps[0];

        fprintf(xmlout, "%s  <Sqcc>\n", s);
        if (notes) {
            fprintf(xmlout, "%s  <!-- Quantization style for this component. -->\n", s);
        }
        if (raw) {
            fprintf(xmlout, "%s    <AsHex>0x%02x</AsHex>\n", s,
                    (tccp->numgbits) << 5 | tccp->qntsty);
        }
        if (derived) {
            fprintf(xmlout, "%s    <QuantizationStyle>%d</QuantizationStyle>\n", s,
                    tccp->qntsty);
        }
        if (notes) {
            fprintf(xmlout,
                    "%s    <!-- Quantization style (in Sqcc's low 5 bits) may be: -->\n", s);
            fprintf(xmlout, "%s    <!--   0 = No quantization. SPqcc size = 8 bits-->\n",
                    s);
            fprintf(xmlout,
                    "%s    <!--   1 = Scalar derived (values signaled for N(L)LL subband only). Use Eq. E.5. SPqcc size = 16. -->\n",
                    s);
            fprintf(xmlout,
                    "%s    <!--   2 = Scalar expounded (values signaled for each subband). SPqcc size = 16. -->\n",
                    s);
        }
        if (derived) {
            fprintf(xmlout, "%s    <NumberOfGuardBits>%d</NumberOfGuardBits>\n", s,
                    tccp->numgbits);
        }
        if (notes) {
            fprintf(xmlout,
                    "%s    <!-- 0-7 guard bits allowed (stored in Sqcc's high 3 bits) -->\n", s);
        }
        fprintf(xmlout, "%s  </Sqcc>\n", s);



        fprintf(xmlout, "%s  <SPqcc>\n", s);
        switch (tccp->qntsty) {
        case 129:
            numbands = J2K_MAXBANDS;



            fprintf(xmlout, "%s    <ReversibleStepSizeValue>\n", s);
            if (notes) {
                fprintf(xmlout,
                        "%s    <!-- Current mj2_to_metadata implementation dumps entire internal table, -->\n",
                        s);
                fprintf(xmlout,
                        "%s    <!-- until an exponent with zero value is reached. -->\n", s);
                fprintf(xmlout,
                        "%s    <!-- Exponent epsilon(b) of reversible dynamic range. -->\n", s);
                fprintf(xmlout,
                        "%s    <!-- Hex value is as stored, in high-order 5 bits. -->\n", s);
            }
            for (bandno = 0; bandno < numbands; bandno++) {
                if (tccp->stepsizes[bandno].expn == 0) {
                    break;
                }
                fprintf(xmlout, "%s      <Exponent Subband=\"%d\">\n", s, bandno);
                if (raw) {
                    fprintf(xmlout, "%s        <AsHex>0x%02x</AsHex>\n", s,
                            tccp->stepsizes[bandno].expn << 3);
                }
                if (derived) {
                    fprintf(xmlout, "%s        <AsDecimal>%d</AsDecimal>\n", s,
                            tccp->stepsizes[bandno].expn);
                }
                fprintf(xmlout, "%s      </Exponent>\n", s);
            }
            fprintf(xmlout, "%s    </ReversibleStepSizeValue>\n", s);
            break;
        case 128:

            fprintf(xmlout, "%s    <QuantizationStepSizeValues>\n", s);
            if (notes) {
                fprintf(xmlout,
                        "%s    <!-- For irreversible transformation only.  See Part I Annex E Equation E.3 -->\n",
                        s);
            }
            fprintf(xmlout, "%s      <QuantizationValuesForSubband0>\n", s);
            if (notes) {
                fprintf(xmlout, "%s      <!-- For N(L)LL subband: >\n", s);
            }
            if (raw) {
                fprintf(xmlout, "%s        <AsHex>0x%02x</AsHex>\n", s,
                        (tccp->stepsizes[0].expn << 11) | tccp->stepsizes[0].mant);
            }
            if (derived) {
                fprintf(xmlout, "%s        <Exponent>%d</Exponent>\n", s,
                        tccp->stepsizes[0].expn);
                fprintf(xmlout, "%s        <Mantissa>%d</Mantissa>\n", s,
                        tccp->stepsizes[0].mant);
            }
            fprintf(xmlout, "%s      </QuantizationValuesForSubband0>\n", s);
            if (notes) {
                fprintf(xmlout,
                        "%s      <!-- Exponents for subbands beyond 0 are not from header, but calculated per Eq. E.5 -->\n",
                        s);
                fprintf(xmlout,
                        "%s      <!-- The mantissa for all subbands is the same, given by the value above. -->\n",
                        s);
                fprintf(xmlout,
                        "%s      <!-- Current mj2_to_metadata implementation dumps entire internal table, -->\n",
                        s);
                fprintf(xmlout,
                        "%s      <!-- until a subband with exponent of zero value is reached. -->\n",
                        s);
            }

            for (bandno = 1; bandno < J2K_MAXBANDS; bandno++) {
                if (tccp->stepsizes[bandno].expn == 0) {
                    break;
                }

                fprintf(xmlout,
                        "%s      <CalculatedExponent Subband=\"%d\">%d</CalculatedExponent>\n", s,
                        bandno, tccp->stepsizes[bandno].expn);
            }
            fprintf(xmlout, "%s    </QuantizationStepSizeValues>\n", s);
            break;

        default:
            numbands = J2K_MAXBANDS;

            fprintf(xmlout, "%s    <QuantizationStepSizeValues>\n", s);
            if (notes) {
                fprintf(xmlout,
                        "%s    <!-- For irreversible transformation only.  See Part I Annex E Equation E.3 -->\n",
                        s);
                fprintf(xmlout,
                        "%s    <!-- Current mj2_to_metadata implementation dumps entire internal table, -->\n",
                        s);
                fprintf(xmlout,
                        "%s    <!-- until a subband with mantissa and exponent of zero values is reached. -->\n",
                        s);
            }
            for (bandno = 0; bandno < numbands; bandno++) {
                if (tccp->stepsizes[bandno].expn == 0 && tccp->stepsizes[bandno].mant == 0) {
                    break;
                }
                fprintf(xmlout, "%s      <QuantizationValues Subband=\"%d\">\n", s, bandno);
                if (raw) {
                    fprintf(xmlout, "%s        <AsHex>0x%02x</AsHex>\n", s,
                            (tccp->stepsizes[bandno].expn << 11) | tccp->stepsizes[bandno].mant);
                }
                if (derived) {
                    fprintf(xmlout, "%s        <Exponent>%d</Exponent>\n", s,
                            tccp->stepsizes[bandno].expn);
                    fprintf(xmlout, "%s        <Mantissa>%d</Mantissa>\n", s,
                            tccp->stepsizes[bandno].mant);
                }
                fprintf(xmlout, "%s      </QuantizationValues>\n", s);
            }
            fprintf(xmlout, "%s    </QuantizationStepSizeValues>\n", s);
            break;
        }
        fprintf(xmlout, "%s  </SPqcc>\n", s);
        fprintf(xmlout, "%s</QuantizationComponent>\n", s);
    }

}
