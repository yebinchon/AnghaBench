#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  seek ;
struct TYPE_15__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ WINE_MCICDAUDIO ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_18__ {int M; int S; int F; } ;
struct TYPE_17__ {int /*<<< orphan*/  LastTrack; int /*<<< orphan*/  FirstTrack; } ;
struct TYPE_16__ {int /*<<< orphan*/  dwCallback; int /*<<< orphan*/  dwTo; } ;
typedef  TYPE_2__* LPMCI_SEEK_PARMS ;
typedef  int DWORD ;
typedef  TYPE_3__ CDROM_TOC ;
typedef  TYPE_4__ CDROM_SEEK_AUDIO_MSF ;

/* Variables and functions */
 int CDFRAMES_PERMIN ; 
 int CDFRAMES_PERSEC ; 
 int FUNC0 (TYPE_3__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IOCTL_CDROM_SEEK_AUDIO_MSF ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_3__*,int*) ; 
 int FUNC6 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MCIERR_FLAGS_NOT_COMPATIBLE ; 
 int MCIERR_HARDWARE ; 
 int MCIERR_INVALID_DEVICE_ID ; 
 int MCIERR_MISSING_PARAMETER ; 
 int MCIERR_NULL_PARAMETER_BLOCK ; 
 int MCI_NOTIFY ; 
 int /*<<< orphan*/  MCI_NOTIFY_SUCCESSFUL ; 
#define  MCI_SEEK_TO_END 130 
#define  MCI_SEEK_TO_START 129 
#define  MCI_TO 128 
 int /*<<< orphan*/  MCI_WAIT ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static DWORD FUNC10(UINT wDevID, DWORD dwFlags, LPMCI_SEEK_PARMS lpParms)
{
    DWORD		        at;
    WINE_MCICDAUDIO*	        wmcda = FUNC3(wDevID);
    CDROM_SEEK_AUDIO_MSF        seek;
    DWORD                       br, position, ret;
    CDROM_TOC			toc;

    FUNC8("(%04X, %08X, %p);\n", wDevID, dwFlags, lpParms);

    if (wmcda == NULL)	return MCIERR_INVALID_DEVICE_ID;
    if (lpParms == NULL) return MCIERR_NULL_PARAMETER_BLOCK;

    position = dwFlags & (MCI_SEEK_TO_START|MCI_SEEK_TO_END|MCI_TO);
    if (!position)		return MCIERR_MISSING_PARAMETER;
    if (position&(position-1))	return MCIERR_FLAGS_NOT_COMPATIBLE;

    /* Stop sends MCI_NOTIFY_ABORTED when needed.
     * Tests show that native first sends ABORTED and reads the TOC,
     * then only checks the position flags, then stops and seeks. */
    FUNC7(wDevID, MCI_WAIT, 0);

    if (!FUNC5(wmcda, &toc, &br))
        return FUNC2(wmcda);

    switch (position) {
    case MCI_SEEK_TO_START:
	FUNC8("Seeking to start\n");
	at = FUNC0(toc,toc.FirstTrack);
	if ( (ret=FUNC6(wmcda, &at)) )
	  return ret;
	break;
    case MCI_SEEK_TO_END:
	FUNC8("Seeking to end\n");
	/* End is prior to lead-out
	 * yet Win9X seeks to even one frame less than that. */
	at = FUNC0(toc, toc.LastTrack + 1) - 1;
	if ( (ret=FUNC6(wmcda, &at)) )
	  return ret;
	break;
    case MCI_TO:
	FUNC8("Seeking to %u\n", lpParms->dwTo);
        at = FUNC1(wmcda, lpParms->dwTo);
	if ( (ret=FUNC6(wmcda, &at)) )
	  return ret;
	break;
    default:
	return MCIERR_FLAGS_NOT_COMPATIBLE;
    }

    {
        seek.M = at / CDFRAMES_PERMIN;
        seek.S = (at / CDFRAMES_PERSEC) % 60;
        seek.F = at % CDFRAMES_PERSEC;
        if (!FUNC9(wmcda->handle, IOCTL_CDROM_SEEK_AUDIO_MSF, &seek, sizeof(seek),
                             NULL, 0, &br, NULL))
            return MCIERR_HARDWARE;
    }

    if (dwFlags & MCI_NOTIFY)
	FUNC4(lpParms->dwCallback, wmcda, MCI_NOTIFY_SUCCESSFUL);
    return 0;
}