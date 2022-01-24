#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int creation_time; int modification_time; int timescale; int duration; int track_type; int graphicsmode; int* opcolor; int balance; int maxPDUsize; int avgPDUsize; int maxbitrate; int avgbitrate; int slidingavgbitrate; int num_url; int num_urn; TYPE_2__* urn; TYPE_1__* url; scalar_t__ language; } ;
typedef  TYPE_3__ mj2_tk_t ;
struct TYPE_7__ {int /*<<< orphan*/ * location; int /*<<< orphan*/ * name; } ;
struct TYPE_6__ {int /*<<< orphan*/ * location; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ derived ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (short,char*) ; 
 scalar_t__ notes ; 
 scalar_t__ raw ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,unsigned int) ; 

void FUNC5(FILE* file, FILE* xmlout, mj2_tk_t *track,
                    unsigned int tnum)
{
    char buf[5];
    int i, k;
    buf[4] = '\0';

    FUNC0(xmlout,    "      <Media BoxType=\"mdia\">\n");
    FUNC0(xmlout,    "        <MediaHeader BoxType=\"mdhd\">\n");
    FUNC0(xmlout,    "          <CreationTime>\n");
    if (raw) {
        FUNC0(xmlout,  "            <InSeconds>%u</InSeconds>\n",
                track->creation_time);
    }
    if (notes) {
        FUNC0(xmlout,
                "            <!-- Seconds since start of Jan. 1, 1904 UTC (Greenwich) -->\n");
    }
    /*  2082844800 = seconds between 1/1/04 and 1/1/70 */
    /* There's still a time zone offset problem not solved... but spec is ambiguous as to whether stored time
       should be local or UTC */
    if (derived) {
        FUNC0(xmlout,  "            <AsLocalTime>");
        FUNC3(xmlout, track->creation_time - 2082844800);
        FUNC0(xmlout, "</AsLocalTime>\n");
    }
    FUNC0(xmlout,    "          </CreationTime>\n");
    FUNC0(xmlout,    "          <ModificationTime>\n");
    if (raw) {
        FUNC0(xmlout,  "            <InSeconds>%u</InSeconds>\n",
                track->modification_time);
    }
    if (derived) {
        FUNC0(xmlout,  "            <AsLocalTime>");
        FUNC3(xmlout, track->modification_time - 2082844800);
        FUNC0(xmlout, "</AsLocalTime>\n");
    }
    FUNC0(xmlout,    "          </ModificationTime>\n");
    FUNC0(xmlout,    "          <Timescale>%d</Timescale>\n", track->timescale);
    if (notes) {
        FUNC0(xmlout,
                "          <!-- Timescale defines time units in one second -->\n");
    }
    FUNC0(xmlout,    "          <Duration>\n");
    if (raw) {
        FUNC0(xmlout,  "            <InTimeUnits>%u</InTimeUnits>\n",
                track->duration);
    }
    if (derived) {
        FUNC0(xmlout,  "            <InSeconds>%12.3f</InSeconds>\n",
                (double)track->duration / (double)
                track->timescale);    // Make this double later to get fractional seconds
    }
    FUNC0(xmlout,    "          </Duration>\n");
    FUNC1((short int)track->language, buf);
    FUNC0(xmlout,    "          <Language>%s</Language>\n", buf);    /* 3 chars */
    FUNC0(xmlout,    "        </MediaHeader>\n");
    FUNC0(xmlout,    "        <HandlerReference BoxType=\"hdlr\">\n");
    switch (track->track_type) {
    case 0:
        FUNC0(xmlout,
                "          <HandlerType Code=\"vide\">video media track</HandlerType>\n");
        break;
    case 1:
        FUNC0(xmlout,  "          <HandlerType Code=\"soun\">Sound</HandlerType>\n");
        break;
    case 2:
        FUNC0(xmlout,  "          <HandlerType Code=\"hint\">Hint</HandlerType>\n");
        break;
    }
    if (notes) {
        FUNC0(xmlout,
                "          <!-- String value shown is not actually read from file. -->\n");
        FUNC0(xmlout,
                "          <!-- Shown value is one used for our encode. -->\n");
    }
    FUNC0(xmlout,    "        </HandlerReference>\n");
    FUNC0(xmlout,    "        <MediaInfoContainer BoxType=\"minf\">\n");
    switch (track->track_type) {
    case 0:
        FUNC0(xmlout,  "          <VideoMediaHeader BoxType=\"vmhd\">\n");
        FUNC0(xmlout,  "            <GraphicsMode>0x%02x</GraphicsMode>\n",
                track->graphicsmode);
        if (notes) {
            FUNC0(xmlout, "            <!-- Enumerated values of graphics mode: -->\n");
            FUNC0(xmlout, "            <!--  0x00 = copy (over existing image); -->\n");
            FUNC0(xmlout,
                    "            <!--  0x24 = transparent; 'blue-screen' this image using opcolor; -->\n");
            FUNC0(xmlout,
                    "            <!--  0x100 = alpha; alpha-blend this image -->\n");
            /*    fprintf(xmlout,"            <!--  0x101 = whitealpha; alpha-blend this image, which has been blended with white; -->\n"); This was evidently dropped upon amendment */
            FUNC0(xmlout,
                    "            <!--  0x102 = pre-multiplied black alpha; image has been already been alpha-blended with black. -->\n");
            FUNC0(xmlout,
                    "            <!--  0x110 = component alpha; blend alpha channel(s) and color channels individually. -->\n");
        }
        FUNC0(xmlout,  "            <Opcolor>\n");
        FUNC0(xmlout,  "              <Red>0x%02x</Red>\n", track->opcolor[0]);
        FUNC0(xmlout,  "              <Green>0x%02x</Green>\n", track->opcolor[1]);
        FUNC0(xmlout,  "              <Blue>0x%02x</Blue>\n", track->opcolor[2]);
        FUNC0(xmlout,  "            </Opcolor>\n");
        FUNC0(xmlout,  "          </VideoMediaHeader>\n");
        break;
    case 1:
        FUNC0(xmlout,  "          <SoundMediaHeader BoxType=\"smhd\">\n");
#ifdef CURRENTSTRUCT
        track->balance = track->balance << 8;
#endif
        FUNC0(xmlout,  "            <Balance>\n");
        if (notes) {
            FUNC0(xmlout,
                    "              <!-- Track audio balance fixes mono track in stereo space. -->\n");
            FUNC0(xmlout,
                    "              <!-- Stored as fixed-point binary 8.8 value. Decimal value is approximation. -->\n");
            FUNC0(xmlout,
                    "              <!-- 0.0 = center, -1.0 = full left, 1.0 = full right -->\n");
        }
        if (raw) {
            FUNC0(xmlout, "              <AsHex>0x%04x</AsHex>\n", track->balance);
        }
        if (derived) {
            FUNC0(xmlout, "              <AsDecimal>%6.3f</AsDecimal>\n",
                    (double)track->balance / (double)0x0100);
        }
        FUNC0(xmlout,  "            </Balance>\n");
#ifdef CURRENTSTRUCT
        if (notes) {
            fprintf(xmlout,
                    "            <!-- Current m2j_to_metadata implementation always shows bits to right of decimal as zeroed. -->\n");
        }
        track->balance = track->balance >> 8;
#endif
        FUNC0(xmlout,  "          </SoundMediaHeader>\n");
        break;
    case 2:
        FUNC0(xmlout,  "          <HintMediaHeader BoxType=\"hmhd\">\n");
        FUNC0(xmlout,  "            <MaxPDU_Size>%d</MaxPDU_Size>\n",
                track->maxPDUsize);
        if (notes) {
            FUNC0(xmlout,
                    "            <!-- Size in bytes of largest PDU in this hint stream. -->\n");
        }
        FUNC0(xmlout,  "            <AvgPDU_Size>%d</AvgPDU_Size>\n",
                track->avgPDUsize);
        if (notes) {
            FUNC0(xmlout,
                    "            <!-- Average size in bytes of a PDU over the entire presentation. -->\n");
        }
        FUNC0(xmlout,  "            <MaxBitRate>%d</MaxBitRate>\n",
                track->maxbitrate);
        if (notes) {
            FUNC0(xmlout,
                    "            <!-- Maximum rate in bits per second over any window of 1 second. -->\n");
        }
        FUNC0(xmlout,  "            <AvgBitRate>%d</AvgBitRate>\n",
                track->avgbitrate);
        if (notes) {
            FUNC0(xmlout,
                    "            <!-- Averate rate in bits per second over the entire presentation. -->\n");
        }
        FUNC0(xmlout,  "            <SlidingAvgBit>%d</SlidingAvgBitRate>\n",
                track->slidingavgbitrate);
        if (notes) {
            FUNC0(xmlout,
                    "            <!-- Maximum rate in bits per second over any window of one minute. -->\n");
        }
        FUNC0(xmlout,  "          </HintMediaHeader>\n");
        break;
    }
    FUNC0(xmlout,    "          <DataInfo BoxType=\"dinf\">\n");
    FUNC0(xmlout,
            "            <DataReference BoxType=\"dref\"  URL_Count=\"%d\" URN_Count=\"%d\">\n",
            track->num_url, track->num_urn); // table w. flags, URLs, URNs
    // Data structure does not distinguish between single URL, single URN, or DREF table or URLs & URNs.
    // We could infer those, but for now just present everything as a DREF table.
    if (notes) {
        FUNC0(xmlout,
                "              <!-- No entries here mean that file is self-contained, as required by Simple Profile. -->\n");
    }
    for (k = 0; k < track->num_url; k++) {
        FUNC0(xmlout,
                "            <DataEntryUrlBox BoxType=\"url[space]\">\n"); // table w. flags, URLs, URNs
        if (notes) {
            FUNC0(xmlout,
                    "              <!-- Only the first 16 bytes of URL location are recorded in mj2_to_metadata data structure. -->\n");
        }
        for (i = 0; i < 4; i++) {
            FUNC2(track->url[track->num_url].location[i], buf);
            FUNC0(xmlout,  "              <Location>%s</Location>\n");
        }
        FUNC0(xmlout,
                "            </DataEntryUrlBox>\n"); // table w. flags, URLs, URNs
    }
    for (k = 0; k < track->num_urn; k++) {
        FUNC0(xmlout,
                "            <DataEntryUrnBox BoxType=\"urn[space]\">\n"); // table w. flags, URLs, URNs
        // Only the first 16 bytes are recorded in the data structure currently.
        if (notes) {
            FUNC0(xmlout,
                    "              <!-- Only the first 16 bytes each of URN name and optional location are recorded in mj2_to_metadata data structure. -->\n");
        }
        FUNC0(xmlout,  "              <Name>");
        for (i = 0; i < 4; i++) {
            FUNC2(track->urn[track->num_urn].name[i], buf);
            FUNC0(xmlout, "%s", buf);
        }
        FUNC0(xmlout,  "</Name>\n");
        FUNC0(xmlout,  "              <Location>");
        for (i = 0; i < 4; i++) {
            FUNC2(track->urn[track->num_urn].location[i], buf);
            FUNC0(xmlout, "%s");
        }
        FUNC0(xmlout,  "</Location>\n");
        FUNC0(xmlout,  "            </DataEntryUrnBox>\n");
    }
    FUNC0(xmlout,    "            </DataReference>\n");
    FUNC0(xmlout,    "          </DataInfo>\n");

    FUNC4(file, xmlout, track, tnum); /* SampleTable */

    FUNC0(xmlout,    "        </MediaInfoContainer>\n");
    FUNC0(xmlout,    "      </Media>\n");
}