#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int dwMciTimeFormat; int dwSet; int /*<<< orphan*/  cs; } ;
typedef  TYPE_1__ WINE_MCIAVI ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {int dwTimeFormat; int dwAudio; int dwFileFormat; char* dwSpeed; } ;
typedef  TYPE_2__* LPMCI_DGV_SET_PARMS ;
typedef  char* LPCSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int MCIERR_BAD_TIME_FORMAT ; 
 int MCIERR_INVALID_DEVICE_ID ; 
 int MCIERR_NULL_PARAMETER_BLOCK ; 
 int MCIERR_UNSUPPORTED_FUNCTION ; 
#define  MCI_DGV_FF_AVI 140 
#define  MCI_DGV_FF_AVSS 139 
#define  MCI_DGV_FF_DIB 138 
#define  MCI_DGV_FF_JFIF 137 
#define  MCI_DGV_FF_JPEG 136 
#define  MCI_DGV_FF_MPEG 135 
#define  MCI_DGV_FF_RDIB 134 
#define  MCI_DGV_FF_RJPEG 133 
 int MCI_DGV_SET_FILEFORMAT ; 
 int MCI_DGV_SET_SEEK_EXACTLY ; 
 int MCI_DGV_SET_SPEED ; 
 int MCI_DGV_SET_STILL ; 
#define  MCI_FORMAT_FRAMES 132 
#define  MCI_FORMAT_MILLISECONDS 131 
 int MCI_SET_AUDIO ; 
#define  MCI_SET_AUDIO_ALL 130 
#define  MCI_SET_AUDIO_LEFT 129 
#define  MCI_SET_AUDIO_RIGHT 128 
 int MCI_SET_DOOR_CLOSED ; 
 int MCI_SET_DOOR_OPEN ; 
 int MCI_SET_OFF ; 
 int MCI_SET_ON ; 
 int MCI_SET_TIME_FORMAT ; 
 int MCI_SET_VIDEO ; 
 int MCI_TEST ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

DWORD	FUNC6(UINT wDevID, DWORD dwFlags, LPMCI_DGV_SET_PARMS lpParms)
{
    WINE_MCIAVI*	wma = FUNC3(wDevID);

    if (lpParms == NULL)	return MCIERR_NULL_PARAMETER_BLOCK;
    if (wma == NULL)		return MCIERR_INVALID_DEVICE_ID;
    if (dwFlags & MCI_TEST)	return 0;

    FUNC0(&wma->cs);

    if (dwFlags & MCI_SET_TIME_FORMAT) {
	switch (lpParms->dwTimeFormat) {
	case MCI_FORMAT_MILLISECONDS:
	    FUNC4("MCI_FORMAT_MILLISECONDS !\n");
	    wma->dwMciTimeFormat = MCI_FORMAT_MILLISECONDS;
	    break;
	case MCI_FORMAT_FRAMES:
	    FUNC4("MCI_FORMAT_FRAMES !\n");
	    wma->dwMciTimeFormat = MCI_FORMAT_FRAMES;
	    break;
	default:
            FUNC5("Bad time format %u!\n", lpParms->dwTimeFormat);
            FUNC2(&wma->cs);
	    return MCIERR_BAD_TIME_FORMAT;
	}
    }

    if (dwFlags & MCI_SET_DOOR_OPEN) {
	FUNC4("No support for door open !\n");
        FUNC2(&wma->cs);
	return MCIERR_UNSUPPORTED_FUNCTION;
    }
    if (dwFlags & MCI_SET_DOOR_CLOSED) {
	FUNC4("No support for door close !\n");
        FUNC2(&wma->cs);
	return MCIERR_UNSUPPORTED_FUNCTION;
    }

    if (dwFlags & MCI_SET_ON) {
	const char *szVideo="";
	const char *szAudio="";
	const char *szSeek="";

	if (dwFlags & MCI_SET_VIDEO) {
	    szVideo = " video";
	    wma->dwSet |= 4;
	}
	if (dwFlags & MCI_SET_AUDIO) {
	    switch (lpParms->dwAudio) {
	    case MCI_SET_AUDIO_ALL:
		szAudio = " audio all";
		wma->dwSet |= 3;
		break;
	    case MCI_SET_AUDIO_LEFT:
		szAudio = " audio left";
		wma->dwSet |= 1;
		break;
	    case MCI_SET_AUDIO_RIGHT:
		szAudio = " audio right";
		wma->dwSet |= 2;
		break;
	    default:
		szAudio = " audio unknown";
		FUNC5("Unknown audio channel %u\n", lpParms->dwAudio);
		break;
	    }
	}
	if (dwFlags & MCI_DGV_SET_SEEK_EXACTLY) {
	    szSeek = " seek_exactly";
	}
	FUNC1("MCI_SET_ON:%s%s%s\n", szVideo, szAudio, szSeek);
    }

    if (dwFlags & MCI_SET_OFF) {
	const char *szVideo="";
	const char *szAudio="";
	const char *szSeek="";

	if (dwFlags & MCI_SET_VIDEO) {
	    szVideo = " video";
	    wma->dwSet &= ~4;
	}
	if (dwFlags & MCI_SET_AUDIO) {
	    switch (lpParms->dwAudio) {
	    case MCI_SET_AUDIO_ALL:
		szAudio = " audio all";
		wma->dwSet &= ~3;
		break;
	    case MCI_SET_AUDIO_LEFT:
		szAudio = " audio left";
		wma->dwSet &= ~2;
		break;
	    case MCI_SET_AUDIO_RIGHT:
		szAudio = " audio right";
		wma->dwSet &= ~2;
		break;
	    default:
		szAudio = " audio unknown";
		FUNC5("Unknown audio channel %u\n", lpParms->dwAudio);
		break;
	    }
	}
	if (dwFlags & MCI_DGV_SET_SEEK_EXACTLY) {
	    szSeek = " seek_exactly";
	}
	FUNC1("MCI_SET_OFF:%s%s%s\n", szVideo, szAudio, szSeek);
    }
    if (dwFlags & MCI_DGV_SET_FILEFORMAT) {
	LPCSTR	str = "save";
	if (dwFlags & MCI_DGV_SET_STILL)
	    str = "capture";

	switch (lpParms->dwFileFormat) {
	case MCI_DGV_FF_AVI: 	FUNC1("Setting file format (%s) to 'AVI'\n", str); 	break;
	case MCI_DGV_FF_AVSS: 	FUNC1("Setting file format (%s) to 'AVSS'\n", str);	break;
	case MCI_DGV_FF_DIB: 	FUNC1("Setting file format (%s) to 'DIB'\n", str);	break;
	case MCI_DGV_FF_JFIF: 	FUNC1("Setting file format (%s) to 'JFIF'\n", str);	break;
	case MCI_DGV_FF_JPEG: 	FUNC1("Setting file format (%s) to 'JPEG'\n", str);	break;
	case MCI_DGV_FF_MPEG: 	FUNC1("Setting file format (%s) to 'MPEG'\n", str); 	break;
	case MCI_DGV_FF_RDIB:	FUNC1("Setting file format (%s) to 'RLE DIB'\n", str);	break;
	case MCI_DGV_FF_RJPEG: 	FUNC1("Setting file format (%s) to 'RJPEG'\n", str);	break;
	default:		FUNC1("Setting unknown file format (%s): %d\n", str, lpParms->dwFileFormat);
	}
    }

    if (dwFlags & MCI_DGV_SET_SPEED) {
	FUNC1("Setting speed to %d\n", lpParms->dwSpeed);
    }

    FUNC2(&wma->cs);
    return 0;
}