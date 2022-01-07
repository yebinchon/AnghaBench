
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* tccps; } ;
typedef TYPE_2__ opj_tcp_t ;
struct TYPE_5__ {int roishift; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*,...) ;
 TYPE_2__* j2k_default_tcp ;
 scalar_t__ notes ;

void xml_out_frame_rgn(FILE* xmlout, opj_tcp_t *tcp, int numcomps)
{
    int compno, SPrgn;

    char spaces[13] = "            ";
    char* s = spaces;
    if (tcp == j2k_default_tcp) {
        s++;
        s++;
    }

    for (compno = 0; compno < numcomps; compno++) {
        SPrgn = tcp->tccps[compno].roishift;
        if (SPrgn == 0) {
            continue;
        }

        fprintf(xmlout, "%s<RegionOfInterest Marker=\"RGN\">\n",
                s);
        if (notes) {
            fprintf(xmlout, "%s<!-- See Crgn below for zero-based component number. -->\n",
                    s);
        }

        fprintf(xmlout, "%s  <Srgn>0</Srgn>\n", s);
        if (notes) {
            fprintf(xmlout,
                    "%s  <!-- Srgn is ROI style.  Only style=0 defined: Implicit ROI (max. shift) -->\n",
                    s);
        }
        fprintf(xmlout, "%s  <Crgn>%d</Crgn>\n", s, compno);
        fprintf(xmlout, "%s  <SPrgn>%d</SPrgn>\n", s, SPrgn);
        if (notes) {
            fprintf(xmlout,
                    "%s  <!-- SPrgn is implicit ROI shift, i.e., binary shifting of ROI coefficients above background. -->\n",
                    s);
        }
        fprintf(xmlout, "</RegionOfInterest\n",
                s);
    }
}
