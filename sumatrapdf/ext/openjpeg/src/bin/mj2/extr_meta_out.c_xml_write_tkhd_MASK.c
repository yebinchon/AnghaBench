#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int track_ID; scalar_t__ track_type; int layer; int volume; int* trans_matrix; int w; int h; } ;
typedef  TYPE_1__ mj2_tk_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ derived ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ notes ; 
 scalar_t__ raw ; 

void FUNC1(FILE* file, FILE* xmlout, mj2_tk_t *track,
                    unsigned int tnum)
{
    FUNC0(xmlout,    "      <TrackHeader BoxType=\"tkhd\">\n");
    if (notes) {
        FUNC0(xmlout,
                "      <!-- Not shown here: CreationTime, ModificationTime, Duration. -->\n");
        FUNC0(xmlout,
                "      <!-- These 3 fields are reported under MediaHeader below.   When reading these 3, -->\n");
        FUNC0(xmlout,
                "      <!-- m2j_to_metadata currently doesn't distinguish between TrackHeader and MediaHeader source. -->\n");
        FUNC0(xmlout,
                "      <!-- If both found, value read from MediaHeader is used. -->\n");
    }
    FUNC0(xmlout,    "        <TrackID>%u</TrackID>\n", track->track_ID);
    if (track->track_type == 0) { /* For visual track */
        FUNC0(xmlout,  "        <TrackLayer>%d</TrackLayer>\n", track->layer);
        if (notes) {
            FUNC0(xmlout,
                    "        <!-- front-to-back ordering of video tracks. 0 = normal, -1 is closer, etc. -->\n");
        }
    }
    if (track->track_type != 0) { /* volume irrelevant for visual track */
#ifdef CURRENTSTRUCT
        track->volume = track->volume << 8;
#endif
        FUNC0(xmlout,  "        <Volume>\n");
        if (notes) {
            FUNC0(xmlout,
                    "          <!-- Track audio volume stored as fixed-point binary 8.8 value. Decimal value is approximation. -->\n");
            FUNC0(xmlout,
                    "          <!-- Full, normal (default) value is 0x0100 (1.0) -->\n");
        }
        if (raw) {
            FUNC0(xmlout, "          <AsHex>0x%04x</AsHex>\n", track->volume);
        }
        if (derived) {
            FUNC0(xmlout, "          <AsDecimal>%6.3f</AsDecimal>\n",
                    (double)track->volume / (double)0x0100);
        }
        FUNC0(xmlout,  "        </Volume>\n");
#ifdef CURRENTSTRUCT
        if (notes) {
            fprintf(xmlout,
                    "        <!-- Current m2j_to_metadata implementation always shows bits to right of decimal as zeroed. -->\n");
        }
        track->volume = track->volume >> 8;
#endif
    }
    if (track->track_type == 0) {
        /* Transformation matrix for video                            */
        FUNC0(xmlout,  "        <TransformationMatrix>\n");
        if (notes) {
            FUNC0(xmlout,
                    "          <!-- Comments about matrix in MovieHeader apply here as well. -->\n");
            FUNC0(xmlout,
                    "          <!-- This matrix is applied before MovieHeader one. -->\n");
        }
        FUNC0(xmlout,  "          <TMa>0x%08x</TMa>\n", track->trans_matrix[0]);
        FUNC0(xmlout,  "          <TMb>0x%08x</TMb>\n", track->trans_matrix[1]);
        FUNC0(xmlout,  "          <TMu>0x%08x</TMu>\n", track->trans_matrix[2]);
        FUNC0(xmlout,  "          <TMc>0x%08x</TMc>\n", track->trans_matrix[3]);
        FUNC0(xmlout,  "          <TMd>0x%08x</TMd>\n", track->trans_matrix[4]);
        FUNC0(xmlout,  "          <TMv>0x%08x</TMv>\n", track->trans_matrix[5]);
        FUNC0(xmlout,  "          <TMx>0x%08x</TMx>\n", track->trans_matrix[6]);
        FUNC0(xmlout,  "          <TMy>0x%08x</TMy>\n", track->trans_matrix[7]);
        FUNC0(xmlout,  "          <TMw>0x%08x</TMw>\n", track->trans_matrix[8]);
        FUNC0(xmlout,  "        </TransformationMatrix>\n");
    }
#ifdef CURRENTSTRUCT
    track->w = track->w << 16;
    track->h = track->h << 16;
#endif
    if (notes) {
        FUNC0(xmlout,
                "        <!-- Width and Height in pixels are for the presentation; frames will be scaled to this. -->\n");
        FUNC0(xmlout,
                "        <!-- Both stored as fixed-point binary 16.16 values. Decimal values are approximations. -->\n");
    }
    FUNC0(xmlout,    "        <Width>\n");
    if (raw) {
        FUNC0(xmlout,  "          <AsHex>0x%08x</AsHex>\n", track->w);
    }
    if (derived) {
        FUNC0(xmlout,  "          <AsDecimal>%12.6f</AsDecimal>\n",
                (double)track->w / (double)
                0x00010000);    /* Rate to play presentation  (default = 0x00010000)          */
    }
    FUNC0(xmlout,    "        </Width>\n");
    FUNC0(xmlout,    "        <Height>\n");
    if (raw) {
        FUNC0(xmlout,  "          <AsHex>0x%08x</AsHex>\n", track->h);
    }
    if (derived) {
        FUNC0(xmlout,  "          <AsDecimal>%12.6f</AsDecimal>\n",
                (double)track->h / (double)
                0x00010000);    /* Rate to play presentation  (default = 0x00010000)          */
    }
    FUNC0(xmlout,    "        </Height>\n");
#ifdef CURRENTSTRUCT
    if (notes) {
        fprintf(xmlout,
                "        <!-- Current m2j_to_metadata implementation always shows bits to right of decimal as zeroed. -->\n");
        fprintf(xmlout,
                "        <!-- Also, width and height values shown here will actually be those read from track's <VisualSampleEntry> if given. -->\n");
    }
    track->w = track->w >> 16;
    track->h = track->h >> 16;
#endif
    FUNC0(xmlout,    "      </TrackHeader>\n");
}