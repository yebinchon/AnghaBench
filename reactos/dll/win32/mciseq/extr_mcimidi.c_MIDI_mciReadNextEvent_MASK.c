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
typedef  int WORD ;
struct TYPE_7__ {int /*<<< orphan*/  hFile; } ;
typedef  TYPE_1__ WINE_MCIMIDI ;
struct TYPE_8__ {scalar_t__ dwIndex; int wLastCommand; int dwLast; int dwEventData; int wEventLength; int /*<<< orphan*/  dwEventPulse; } ;
typedef  TYPE_2__ MCI_MIDITRACK ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int MCIERR_INTERNAL ; 
 int MCIERR_INVALID_FILE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*) ; 
 int FUNC2 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD	FUNC5(WINE_MCIMIDI* wmm, MCI_MIDITRACK* mmt)
{
    BYTE	b1, b2 = 0, b3;
    WORD	hw = 0;
    DWORD	evtPulse;
    DWORD	evtLength;
    DWORD	tmp;

    if (FUNC4(wmm->hFile, mmt->dwIndex, SEEK_SET) != mmt->dwIndex) {
	FUNC3("Can't seek at %08X\n", mmt->dwIndex);
	return MCIERR_INVALID_FILE;
    }
    evtLength = FUNC2(wmm, &evtPulse) + 1;	/* > 0 */
    FUNC1(wmm, &b1);
    switch (b1) {
    case 0xF0:
    case 0xF7:
	evtLength += FUNC2(wmm, &tmp);
	evtLength += tmp;
	break;
    case 0xFF:
	FUNC1(wmm, &b2);	evtLength++;

	evtLength += FUNC2(wmm, &tmp);
	if (evtLength >= 0x10000u) {
	    /* this limitation shouldn't be a problem */
	    FUNC3("Ouch !! Implementation limitation to 64k bytes for a MIDI event is overflowed\n");
	    hw = 0xFFFF;
	} else {
	    hw = FUNC0(evtLength);
	}
	evtLength += tmp;
	break;
    default:
	if (b1 & 0x80) { /* use running status ? */
	    mmt->wLastCommand = b1;
	    FUNC1(wmm, &b2);	evtLength++;
	} else {
	    b2 = b1;
	    b1 = mmt->wLastCommand;
	}
	switch ((b1 >> 4) & 0x07) {
	case 0:	case 1:	case 2: case 3: case 6:
	    FUNC1(wmm, &b3);	evtLength++;
	    hw = b3;
	    break;
	case 4:	case 5:
	    break;
	case 7:
	    FUNC3("Strange indeed b1=0x%02x\n", b1);
	}
	break;
    }
    if (mmt->dwIndex + evtLength > mmt->dwLast)
	return MCIERR_INTERNAL;

    mmt->dwEventPulse += evtPulse;
    mmt->dwEventData   = (hw << 16) + (b2 << 8) + b1;
    mmt->wEventLength  = evtLength;

    /*
      TRACE("[%u] => pulse=%08x(%08x), data=%08x, length=%u\n",
      mmt->wTrackNr, mmt->dwEventPulse, evtPulse,
      mmt->dwEventData, mmt->wEventLength);
    */
    return 0;
}