
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int track_ID; scalar_t__ track_type; int layer; int volume; int* trans_matrix; int w; int h; } ;
typedef TYPE_1__ mj2_tk_t ;
typedef int FILE ;


 scalar_t__ derived ;
 int fprintf (int *,char*,...) ;
 scalar_t__ notes ;
 scalar_t__ raw ;

void xml_write_tkhd(FILE* file, FILE* xmlout, mj2_tk_t *track,
                    unsigned int tnum)
{
    fprintf(xmlout, "      <TrackHeader BoxType=\"tkhd\">\n");
    if (notes) {
        fprintf(xmlout,
                "      <!-- Not shown here: CreationTime, ModificationTime, Duration. -->\n");
        fprintf(xmlout,
                "      <!-- These 3 fields are reported under MediaHeader below.   When reading these 3, -->\n");
        fprintf(xmlout,
                "      <!-- m2j_to_metadata currently doesn't distinguish between TrackHeader and MediaHeader source. -->\n");
        fprintf(xmlout,
                "      <!-- If both found, value read from MediaHeader is used. -->\n");
    }
    fprintf(xmlout, "        <TrackID>%u</TrackID>\n", track->track_ID);
    if (track->track_type == 0) {
        fprintf(xmlout, "        <TrackLayer>%d</TrackLayer>\n", track->layer);
        if (notes) {
            fprintf(xmlout,
                    "        <!-- front-to-back ordering of video tracks. 0 = normal, -1 is closer, etc. -->\n");
        }
    }
    if (track->track_type != 0) {



        fprintf(xmlout, "        <Volume>\n");
        if (notes) {
            fprintf(xmlout,
                    "          <!-- Track audio volume stored as fixed-point binary 8.8 value. Decimal value is approximation. -->\n");
            fprintf(xmlout,
                    "          <!-- Full, normal (default) value is 0x0100 (1.0) -->\n");
        }
        if (raw) {
            fprintf(xmlout, "          <AsHex>0x%04x</AsHex>\n", track->volume);
        }
        if (derived) {
            fprintf(xmlout, "          <AsDecimal>%6.3f</AsDecimal>\n",
                    (double)track->volume / (double)0x0100);
        }
        fprintf(xmlout, "        </Volume>\n");







    }
    if (track->track_type == 0) {

        fprintf(xmlout, "        <TransformationMatrix>\n");
        if (notes) {
            fprintf(xmlout,
                    "          <!-- Comments about matrix in MovieHeader apply here as well. -->\n");
            fprintf(xmlout,
                    "          <!-- This matrix is applied before MovieHeader one. -->\n");
        }
        fprintf(xmlout, "          <TMa>0x%08x</TMa>\n", track->trans_matrix[0]);
        fprintf(xmlout, "          <TMb>0x%08x</TMb>\n", track->trans_matrix[1]);
        fprintf(xmlout, "          <TMu>0x%08x</TMu>\n", track->trans_matrix[2]);
        fprintf(xmlout, "          <TMc>0x%08x</TMc>\n", track->trans_matrix[3]);
        fprintf(xmlout, "          <TMd>0x%08x</TMd>\n", track->trans_matrix[4]);
        fprintf(xmlout, "          <TMv>0x%08x</TMv>\n", track->trans_matrix[5]);
        fprintf(xmlout, "          <TMx>0x%08x</TMx>\n", track->trans_matrix[6]);
        fprintf(xmlout, "          <TMy>0x%08x</TMy>\n", track->trans_matrix[7]);
        fprintf(xmlout, "          <TMw>0x%08x</TMw>\n", track->trans_matrix[8]);
        fprintf(xmlout, "        </TransformationMatrix>\n");
    }




    if (notes) {
        fprintf(xmlout,
                "        <!-- Width and Height in pixels are for the presentation; frames will be scaled to this. -->\n");
        fprintf(xmlout,
                "        <!-- Both stored as fixed-point binary 16.16 values. Decimal values are approximations. -->\n");
    }
    fprintf(xmlout, "        <Width>\n");
    if (raw) {
        fprintf(xmlout, "          <AsHex>0x%08x</AsHex>\n", track->w);
    }
    if (derived) {
        fprintf(xmlout, "          <AsDecimal>%12.6f</AsDecimal>\n",
                (double)track->w / (double)
                0x00010000);
    }
    fprintf(xmlout, "        </Width>\n");
    fprintf(xmlout, "        <Height>\n");
    if (raw) {
        fprintf(xmlout, "          <AsHex>0x%08x</AsHex>\n", track->h);
    }
    if (derived) {
        fprintf(xmlout, "          <AsDecimal>%12.6f</AsDecimal>\n",
                (double)track->h / (double)
                0x00010000);
    }
    fprintf(xmlout, "        </Height>\n");
    fprintf(xmlout, "      </TrackHeader>\n");
}
