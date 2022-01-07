
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int h; int w; int numcomps; int bpc; int C; int UnkC; int IPR; int meth; int precedence; int approx; int enumcs; TYPE_1__* comps; } ;
typedef TYPE_2__ opj_jp2_t ;
struct TYPE_4__ {int bpcc; } ;
typedef int FILE ;


 scalar_t__ derived ;
 int fprintf (int *,char*,...) ;
 scalar_t__ notes ;
 scalar_t__ raw ;

void xml_out_frame_jp2h(FILE* xmlout, opj_jp2_t *jp2_struct)
{

    int i;

    fprintf(xmlout, "              <JP2Header BoxType=\"jp2h\">\n");


    fprintf(xmlout, "                <ImageHeader BoxType=\"ihdr\">\n");
    fprintf(xmlout, "                  <HEIGHT>%d</HEIGHT>\n",
            jp2_struct->h);
    fprintf(xmlout, "                  <WIDTH>%d</WIDTH>\n",
            jp2_struct->w);
    if (notes) {
        fprintf(xmlout,
                "                  <!-- HEIGHT here, if 2 fields per image, is of total deinterlaced height. -->\n");
    }
    fprintf(xmlout, "                  <NC>%d</NC>\n",
            jp2_struct->numcomps);
    if (notes) {
        fprintf(xmlout,
                "                  <!-- NC is number of components -->\n");
    }
    fprintf(xmlout, "                  <BPC>\n");
    if (jp2_struct->bpc == 255) {
        fprintf(xmlout, "                    <AsHex>0x%02x</AsHex>\n",
                jp2_struct->bpc);
        if (notes) {
            fprintf(xmlout,
                    "                    <!-- BPC = 0xff means bits per pixel varies with component; see table below. -->\n");
        }
    } else {
        if (raw) {
            fprintf(xmlout, "                    <AsHex>0x%02x</AsHex>\n",
                    jp2_struct->bpc);
            if (notes) {
                fprintf(xmlout,
                        "                    <!-- BPC = 0xff means bits per pixel varies with component; see table below. -->\n");
            }
        }
        if (derived) {
            fprintf(xmlout, "                    <BitsPerPixel>%d</BitsPerPixel>\n",
                    jp2_struct->bpc & 0x7f);
            fprintf(xmlout, "                    <Signed>%d</Signed>\n",
                    jp2_struct->bpc >> 7);
        }
    }
    fprintf(xmlout, "                  </BPC>\n");
    fprintf(xmlout, "                  <C>%d</C>\n",
            jp2_struct->C);
    if (notes) {
        fprintf(xmlout,
                "                  <!-- C is compression type.  Only \"7\" is allowed to date. -->\n");
    }
    fprintf(xmlout, "                  <UnkC>%d</UnkC>\n",
            jp2_struct->UnkC);
    if (notes) {
        fprintf(xmlout,
                "                  <!-- Colourspace Unknown. 1 = unknown, 0 = known (e.g., colourspace spec is accurate) -->\n");
    }
    fprintf(xmlout, "                  <IPR>%d</IPR>\n",
            jp2_struct->IPR);
    if (notes) {
        fprintf(xmlout,
                "                  <!-- IPR is 1 if frame contains an Intellectual Property box; 0 otherwise. -->\n");
    }
    fprintf(xmlout, "                </ImageHeader>\n");

    if (jp2_struct->bpc == 255) {
        fprintf(xmlout, "                <BitsPerComponent BoxType=\"bpcc\">\n");
        if (notes) {
            fprintf(xmlout,
                    "                <!-- Pixel depth (range 1 to 38) is low 7 bits of hex value + 1 -->\n");
        }


        for (i = 0; i < (int)jp2_struct->numcomps; i++) {
            if (raw) {
                fprintf(xmlout, "                  <AsHex>0x%02x</AsHex>\n",
                        jp2_struct->comps[i].bpcc);
            }
            if (derived) {
                fprintf(xmlout, "                  <BitsPerPixel>%d</BitsPerPixel>\n",
                        (jp2_struct->comps[i].bpcc & 0x7f) + 1);
                fprintf(xmlout, "                  <Signed>%d</Signed>\n",
                        jp2_struct->comps[i].bpcc >> 7);
            }
        }
        fprintf(xmlout, "                </BitsPerComponent>\n");
    }


    fprintf(xmlout,
            "                <ColourSpecification BoxType=\"colr\">\n");
    fprintf(xmlout, "                  <METH>%d</METH>\n",
            jp2_struct->meth);
    if (notes) {
        fprintf(xmlout,
                "                  <!-- Valid values of specification method so far: -->\n");
        fprintf(xmlout,
                "                  <!--   1 = Enumerated colourspace, in EnumCS field -->\n");
        fprintf(xmlout,
                "                  <!--   2 = Restricted ICC Profile, in PROFILE field -->\n");
    }
    fprintf(xmlout, "                  <PREC>%d</PREC>\n",
            jp2_struct->precedence);
    if (notes) {
        fprintf(xmlout,
                "                  <!-- 0 is only valid value of precedence so far. -->\n");
    }
    fprintf(xmlout, "                  <APPROX>%d</APPROX>\n",
            jp2_struct->approx);
    if (notes) {
        fprintf(xmlout,
                "                  <!-- 0 is only valid value of colourspace approximation so far. -->\n");
    }

    if (jp2_struct->meth == 1) {
        fprintf(xmlout, "                  <EnumCS>%d</EnumCS>\n",
                jp2_struct->enumcs);
        if (notes) {
            fprintf(xmlout,
                    "                  <!-- Valid values of enumerated MJ2 colourspace so far: -->\n");
            fprintf(xmlout,
                    "                  <!--   16: sRGB as defined by IEC 61966-2-1. -->\n");
            fprintf(xmlout,
                    "                  <!--   17: greyscale (related to sRGB). -->\n");
            fprintf(xmlout,
                    "                  <!--   18: sRGB YCC (from JPEG 2000 Part II). -->\n");
            fprintf(xmlout,
                    "                  <!-- (Additional JPX values are defined in Part II). -->\n");
        }
    } else if (notes) {
        fprintf(xmlout,
                "                  <!-- PROFILE is not handled by current OpenJPEG implementation. -->\n");
    }

    fprintf(xmlout, "                </ColourSpecification>\n");







    fprintf(xmlout, "              </JP2Header>\n");
}
