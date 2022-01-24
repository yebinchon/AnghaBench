#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fmt ;
typedef  int /*<<< orphan*/  data ;
typedef  int WORD ;
struct TYPE_21__ {int dwTimeFormat; int /*<<< orphan*/  handle; } ;
typedef  TYPE_3__ WINE_MCICDAUDIO ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_25__ {void* Format; } ;
struct TYPE_24__ {size_t FirstTrack; size_t LastTrack; TYPE_1__* TrackData; } ;
struct TYPE_23__ {int dwItem; int dwReturn; size_t dwTrack; int /*<<< orphan*/  dwCallback; } ;
struct TYPE_20__ {int TrackNumber; int /*<<< orphan*/  AbsoluteAddress; } ;
struct TYPE_22__ {TYPE_2__ CurrentPosition; } ;
struct TYPE_19__ {int Control; } ;
typedef  TYPE_4__ SUB_Q_CHANNEL_DATA ;
typedef  TYPE_5__* LPMCI_STATUS_PARMS ;
typedef  int DWORD ;
typedef  TYPE_6__ CDROM_TOC ;
typedef  TYPE_7__ CDROM_SUB_Q_DATA_FORMAT ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (TYPE_6__,size_t) ; 
 scalar_t__ FUNC3 (int) ; 
 void* IOCTL_CDROM_CURRENT_POSITION ; 
 int /*<<< orphan*/  IOCTL_CDROM_READ_Q_CHANNEL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (int,int) ; 
 void* FUNC6 (TYPE_3__*,int,int,int*) ; 
 int FUNC7 (TYPE_3__*) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_6__*,int*) ; 
 int MCIERR_FLAGS_NOT_COMPATIBLE ; 
 int MCIERR_INVALID_DEVICE_ID ; 
 int MCIERR_MISSING_PARAMETER ; 
 int MCIERR_NULL_PARAMETER_BLOCK ; 
 int MCIERR_OUTOFRANGE ; 
 int MCIERR_UNSUPPORTED_FUNCTION ; 
#define  MCI_CDA_STATUS_TYPE_TRACK 140 
 int MCI_CDA_TRACK_AUDIO ; 
 int MCI_CDA_TRACK_OTHER ; 
 int MCI_FALSE ; 
 int MCI_FORMAT_MSF ; 
 int MCI_FORMAT_RETURN_BASE ; 
 int MCI_FORMAT_TMSF ; 
#define  MCI_MODE_NOT_READY 139 
#define  MCI_MODE_OPEN 138 
 int MCI_NOTIFY ; 
 int /*<<< orphan*/  MCI_NOTIFY_SUCCESSFUL ; 
 int MCI_RESOURCE_RETURNED ; 
#define  MCI_STATUS_CURRENT_TRACK 137 
 int MCI_STATUS_ITEM ; 
#define  MCI_STATUS_LENGTH 136 
#define  MCI_STATUS_MEDIA_PRESENT 135 
#define  MCI_STATUS_MODE 134 
#define  MCI_STATUS_NUMBER_OF_TRACKS 133 
#define  MCI_STATUS_POSITION 132 
#define  MCI_STATUS_READY 131 
#define  MCI_STATUS_START 130 
#define  MCI_STATUS_TIME_FORMAT 129 
#define  MCI_TRACK 128 
 int MCI_TRUE ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*,int,TYPE_4__*,int,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static DWORD FUNC14(UINT wDevID, DWORD dwFlags, LPMCI_STATUS_PARMS lpParms)
{
    WINE_MCICDAUDIO*	        wmcda = FUNC8(wDevID);
    DWORD	                ret = 0;
    CDROM_SUB_Q_DATA_FORMAT     fmt;
    SUB_Q_CHANNEL_DATA          data;
    CDROM_TOC                   toc;
    DWORD                       br;

    FUNC12("(%04X, %08X, %p);\n", wDevID, dwFlags, lpParms);

    if (lpParms == NULL) return MCIERR_NULL_PARAMETER_BLOCK;
    if (wmcda == NULL) return MCIERR_INVALID_DEVICE_ID;

    if (dwFlags & MCI_STATUS_ITEM) {
	FUNC12("dwItem = %x\n", lpParms->dwItem);
	switch (lpParms->dwItem) {
	case MCI_STATUS_CURRENT_TRACK:
            fmt.Format = IOCTL_CDROM_CURRENT_POSITION;
            if (!FUNC13(wmcda->handle, IOCTL_CDROM_READ_Q_CHANNEL, &fmt, sizeof(fmt),
                                 &data, sizeof(data), &br, NULL))
            {
		return FUNC7(wmcda);
		/* alt. data.CurrentPosition.TrackNumber = 1; -- what native yields */
	    }
	    lpParms->dwReturn = data.CurrentPosition.TrackNumber;
            FUNC12("CURRENT_TRACK=%lu\n", lpParms->dwReturn);
	    break;
	case MCI_STATUS_LENGTH:
	    if (!FUNC11(wmcda, &toc, &br))
                return FUNC7(wmcda);

	    if (dwFlags & MCI_TRACK) {
		FUNC12("MCI_TRACK #%u LENGTH=??? !\n", lpParms->dwTrack);
		if (lpParms->dwTrack < toc.FirstTrack || lpParms->dwTrack > toc.LastTrack)
		    return MCIERR_OUTOFRANGE;
		lpParms->dwReturn = FUNC2(toc, lpParms->dwTrack + 1) -
                    FUNC2(toc, lpParms->dwTrack);
		/* Windows returns one frame less than the total track length for the
		   last track on the CD.  See CDDB HOWTO.  Verified on Win95OSR2. */
		if (lpParms->dwTrack == toc.LastTrack)
		    lpParms->dwReturn--;
	    } else {
		/* Sum of the lengths of all of the tracks.  Inherits the
		   'off by one frame' behavior from the length of the last track.
		   See above comment. */
		lpParms->dwReturn = FUNC2(toc, toc.LastTrack + 1) -
                    FUNC2(toc, toc.FirstTrack) - 1;
	    }
	    lpParms->dwReturn = FUNC6(wmcda,
						 (wmcda->dwTimeFormat == MCI_FORMAT_TMSF)
						    ? MCI_FORMAT_MSF : wmcda->dwTimeFormat,
						 lpParms->dwReturn,
						 &ret);
            FUNC12("LENGTH=%lu\n", lpParms->dwReturn);
	    break;
	case MCI_STATUS_MODE:
            lpParms->dwReturn = FUNC9(wmcda);
            FUNC12("MCI_STATUS_MODE=%08lX\n", lpParms->dwReturn);
	    lpParms->dwReturn = FUNC5(lpParms->dwReturn, lpParms->dwReturn);
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_STATUS_MEDIA_PRESENT:
	    lpParms->dwReturn = (FUNC9(wmcda) == MCI_MODE_OPEN) ?
		FUNC5(FALSE, MCI_FALSE) : FUNC5(TRUE, MCI_TRUE);
	    FUNC12("MCI_STATUS_MEDIA_PRESENT =%c!\n", FUNC4(lpParms->dwReturn) ? 'Y' : 'N');
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_STATUS_NUMBER_OF_TRACKS:
	    if (!FUNC11(wmcda, &toc, &br))
                return FUNC7(wmcda);

	    lpParms->dwReturn = toc.LastTrack - toc.FirstTrack + 1;
            FUNC12("MCI_STATUS_NUMBER_OF_TRACKS = %lu\n", lpParms->dwReturn);
	    if (lpParms->dwReturn == (WORD)-1)
		return FUNC7(wmcda);
	    break;
	case MCI_STATUS_POSITION:
            switch (dwFlags & (MCI_STATUS_START | MCI_TRACK)) {
            case MCI_STATUS_START:
                if (!FUNC11(wmcda, &toc, &br))
                    return FUNC7(wmcda);

		lpParms->dwReturn = FUNC2(toc, toc.FirstTrack);
		FUNC12("get MCI_STATUS_START !\n");
                break;
            case MCI_TRACK:
                if (!FUNC11(wmcda, &toc, &br))
                    return FUNC7(wmcda);

		if (lpParms->dwTrack < toc.FirstTrack || lpParms->dwTrack > toc.LastTrack)
		    return MCIERR_OUTOFRANGE;
		lpParms->dwReturn = FUNC2(toc, lpParms->dwTrack);
		FUNC12("get MCI_TRACK #%u !\n", lpParms->dwTrack);
                break;
            case 0:
                fmt.Format = IOCTL_CDROM_CURRENT_POSITION;
                if (!FUNC13(wmcda->handle, IOCTL_CDROM_READ_Q_CHANNEL, &fmt, sizeof(fmt),
                                     &data, sizeof(data), &br, NULL)) {
                    return FUNC7(wmcda);
                }
                lpParms->dwReturn = FUNC1(data.CurrentPosition.AbsoluteAddress);
                break;
            default:
                return MCIERR_FLAGS_NOT_COMPATIBLE;
            }
	    lpParms->dwReturn = FUNC6(wmcda, wmcda->dwTimeFormat, lpParms->dwReturn, &ret);
            FUNC12("MCI_STATUS_POSITION=%08lX\n", lpParms->dwReturn);
	    break;
	case MCI_STATUS_READY:
	    FUNC12("MCI_STATUS_READY !\n");
            switch (FUNC9(wmcda))
            {
            case MCI_MODE_NOT_READY:
            case MCI_MODE_OPEN:
                lpParms->dwReturn = FUNC5(FALSE, MCI_FALSE);
                break;
            default:
                lpParms->dwReturn = FUNC5(TRUE, MCI_TRUE);
                break;
            }
	    FUNC12("MCI_STATUS_READY=%u!\n", FUNC4(lpParms->dwReturn));
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case MCI_STATUS_TIME_FORMAT:
	    lpParms->dwReturn = FUNC5(wmcda->dwTimeFormat, MCI_FORMAT_RETURN_BASE + wmcda->dwTimeFormat);
	    FUNC12("MCI_STATUS_TIME_FORMAT=%08x!\n", FUNC4(lpParms->dwReturn));
	    ret = MCI_RESOURCE_RETURNED;
	    break;
	case 4001: /* FIXME: for bogus FullCD */
	case MCI_CDA_STATUS_TYPE_TRACK:
	    if (!(dwFlags & MCI_TRACK))
		ret = MCIERR_MISSING_PARAMETER;
	    else {
                if (!FUNC11(wmcda, &toc, &br))
                    return FUNC7(wmcda);

		if (lpParms->dwTrack < toc.FirstTrack || lpParms->dwTrack > toc.LastTrack)
		    ret = MCIERR_OUTOFRANGE;
		else
		    lpParms->dwReturn = (toc.TrackData[lpParms->dwTrack - toc.FirstTrack].Control & 0x04) ?
                                         MCI_CDA_TRACK_OTHER : MCI_CDA_TRACK_AUDIO;
		    /* FIXME: MAKEMCIRESOURCE "audio" | "other", localised */
	    }
            FUNC12("MCI_CDA_STATUS_TYPE_TRACK[%d]=%ld\n", lpParms->dwTrack, lpParms->dwReturn);
	    break;
	default:
            FUNC0("unknown command %08X !\n", lpParms->dwItem);
	    return MCIERR_UNSUPPORTED_FUNCTION;
	}
    } else return MCIERR_MISSING_PARAMETER;
    if ((dwFlags & MCI_NOTIFY) && FUNC3(ret)==0)
	FUNC10(lpParms->dwCallback, wmcda, MCI_NOTIFY_SUCCESSFUL);
    return ret;
}