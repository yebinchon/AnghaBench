#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t WORD ;
struct TYPE_8__ {int wFormat; int nTracks; int nDivision; int dwTempo; TYPE_4__* tracks; int /*<<< orphan*/  hFile; int /*<<< orphan*/  dwMciTimeFormat; } ;
typedef  TYPE_1__ WINE_MCIMIDI ;
struct TYPE_9__ {size_t wTrackNr; } ;
typedef  int /*<<< orphan*/  MCI_MIDITRACK ;
typedef  int /*<<< orphan*/  HPSTR ;
typedef  scalar_t__ FOURCC ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 scalar_t__ MCIERR_INVALID_FILE ; 
 scalar_t__ MCIERR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  MCI_FORMAT_MILLISECONDS ; 
 int /*<<< orphan*/  MCI_FORMAT_SMPTE_24 ; 
 int /*<<< orphan*/  MCI_FORMAT_SMPTE_25 ; 
 int /*<<< orphan*/  MCI_FORMAT_SMPTE_30 ; 
 int /*<<< orphan*/  MCI_FORMAT_SMPTE_30DROP ; 
 scalar_t__ FUNC5 (TYPE_1__*,scalar_t__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (char,char,char,char) ; 
 long FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC13(WINE_MCIMIDI* wmm, DWORD dwOffset)
{
    DWORD	toberead;
    FOURCC	fourcc;
    WORD	nt;

    FUNC8("(%p, %08X);\n", wmm, dwOffset);

    if (FUNC12(wmm->hFile, dwOffset, SEEK_SET) != dwOffset) {
	FUNC9("Can't seek at %08X begin of 'MThd'\n", dwOffset);
	return MCIERR_INVALID_FILE;
    }
    if (FUNC11(wmm->hFile, (HPSTR)&fourcc,
		   (long) sizeof(FOURCC)) != (long) sizeof(FOURCC))
	return MCIERR_INVALID_FILE;

    if (fourcc != FUNC10('M', 'T', 'h', 'd')) {
	FUNC9("Can't synchronize on 'MThd' !\n");
	return MCIERR_INVALID_FILE;
    }

    if (FUNC5(wmm, &toberead) != 0 || toberead < 3 * sizeof(WORD))
	return MCIERR_INVALID_FILE;

    if (FUNC7(wmm, &wmm->wFormat) != 0 ||
	FUNC7(wmm, &wmm->nTracks) != 0 ||
	FUNC7(wmm, &wmm->nDivision) != 0) {
	return MCIERR_INVALID_FILE;
    }

    FUNC8("toberead=0x%08X, wFormat=0x%04X nTracks=0x%04X nDivision=0x%04X\n",
	  toberead, wmm->wFormat, wmm->nTracks, wmm->nDivision);

    /* MS doc says that the MIDI MCI time format must be put by default to the format
     * stored in the MIDI file...
     */
    if (wmm->nDivision > 0x8000) {
	/* eric.pouech@lemel.fr 98/11
	 * I did not check this very code (pulses are expressed as SMPTE sub-frames).
	 * In about 40 MB of MIDI files I have, none was SMPTE based...
	 * I'm just wondering if this is widely used :-). So, if someone has one of
	 * these files, I'd like to know about it.
	 */
	FUNC0("Handling SMPTE time in MIDI files has not been tested\n"
	      "Please report to comp.emulators.ms-windows.wine with MIDI file !\n");

	switch (FUNC2(wmm->nDivision)) {
	case 0xE8:	wmm->dwMciTimeFormat = MCI_FORMAT_SMPTE_24;	break;	/* -24 */
	case 0xE7:	wmm->dwMciTimeFormat = MCI_FORMAT_SMPTE_25;	break;	/* -25 */
	case 0xE3:	wmm->dwMciTimeFormat = MCI_FORMAT_SMPTE_30DROP;	break;	/* -29 */ /* is the MCI constant correct ? */
	case 0xE2:	wmm->dwMciTimeFormat = MCI_FORMAT_SMPTE_30;	break;	/* -30 */
	default:
	    FUNC9("Unsupported number of frames %d\n", -(char)FUNC2(wmm->nDivision));
	    return MCIERR_INVALID_FILE;
	}
	switch (FUNC4(wmm->nDivision)) {
	case 4:	/* MIDI Time Code */
	case 8:
	case 10:
	case 80: /* SMPTE bit resolution */
	case 100:
	default:
	    FUNC9("Unsupported number of sub-frames %d\n", FUNC4(wmm->nDivision));
	    return MCIERR_INVALID_FILE;
	}
    } else if (wmm->nDivision == 0) {
	FUNC9("Number of division is 0, can't support that !!\n");
	return MCIERR_INVALID_FILE;
    } else {
	wmm->dwMciTimeFormat = MCI_FORMAT_MILLISECONDS;
    }

    switch (wmm->wFormat) {
    case 0:
	if (wmm->nTracks != 1) {
	    FUNC9("Got type 0 file whose number of track is not 1. Setting it to 1\n");
	    wmm->nTracks = 1;
	}
	break;
    case 1:
    case 2:
	break;
    default:
	FUNC9("Handling MIDI files which format = %d is not (yet) supported\n"
	     "Please report with MIDI file !\n", wmm->wFormat);
	return MCIERR_INVALID_FILE;
    }

    if (wmm->nTracks > 0x80) {
	/* wTrackNr is 7 bits only */
	FUNC0("Truncating MIDI file with %u tracks\n", wmm->nTracks);
	wmm->nTracks = 0x80;
    }

    if ((wmm->tracks = FUNC3(FUNC1(), 0, sizeof(MCI_MIDITRACK) * wmm->nTracks)) == NULL) {
	return MCIERR_OUT_OF_MEMORY;
    }

    toberead -= 3 * sizeof(WORD);
    if (toberead > 0) {
	FUNC8("Size of MThd > 6, skipping %d extra bytes\n", toberead);
	FUNC12(wmm->hFile, toberead, SEEK_CUR);
    }

    for (nt = 0; nt < wmm->nTracks; nt++) {
	wmm->tracks[nt].wTrackNr = nt;
	if (FUNC6(wmm, &wmm->tracks[nt]) != 0) {
	    FUNC9("Can't read 'MTrk' header\n");
	    return MCIERR_INVALID_FILE;
	}
    }

    wmm->dwTempo = 500000;

    return 0;
}