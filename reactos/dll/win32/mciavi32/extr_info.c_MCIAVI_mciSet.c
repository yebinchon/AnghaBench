
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dwMciTimeFormat; int dwSet; int cs; } ;
typedef TYPE_1__ WINE_MCIAVI ;
typedef int UINT ;
struct TYPE_6__ {int dwTimeFormat; int dwAudio; int dwFileFormat; char* dwSpeed; } ;
typedef TYPE_2__* LPMCI_DGV_SET_PARMS ;
typedef char* LPCSTR ;
typedef int DWORD ;


 int EnterCriticalSection (int *) ;
 int FIXME (char*,char const*,...) ;
 int LeaveCriticalSection (int *) ;
 TYPE_1__* MCIAVI_mciGetOpenDev (int ) ;
 int MCIERR_BAD_TIME_FORMAT ;
 int MCIERR_INVALID_DEVICE_ID ;
 int MCIERR_NULL_PARAMETER_BLOCK ;
 int MCIERR_UNSUPPORTED_FUNCTION ;
 int MCI_DGV_SET_FILEFORMAT ;
 int MCI_DGV_SET_SEEK_EXACTLY ;
 int MCI_DGV_SET_SPEED ;
 int MCI_DGV_SET_STILL ;


 int MCI_SET_AUDIO ;



 int MCI_SET_DOOR_CLOSED ;
 int MCI_SET_DOOR_OPEN ;
 int MCI_SET_OFF ;
 int MCI_SET_ON ;
 int MCI_SET_TIME_FORMAT ;
 int MCI_SET_VIDEO ;
 int MCI_TEST ;
 int TRACE (char*) ;
 int WARN (char*,int) ;

DWORD MCIAVI_mciSet(UINT wDevID, DWORD dwFlags, LPMCI_DGV_SET_PARMS lpParms)
{
    WINE_MCIAVI* wma = MCIAVI_mciGetOpenDev(wDevID);

    if (lpParms == ((void*)0)) return MCIERR_NULL_PARAMETER_BLOCK;
    if (wma == ((void*)0)) return MCIERR_INVALID_DEVICE_ID;
    if (dwFlags & MCI_TEST) return 0;

    EnterCriticalSection(&wma->cs);

    if (dwFlags & MCI_SET_TIME_FORMAT) {
 switch (lpParms->dwTimeFormat) {
 case 131:
     TRACE("MCI_FORMAT_MILLISECONDS !\n");
     wma->dwMciTimeFormat = 131;
     break;
 case 132:
     TRACE("MCI_FORMAT_FRAMES !\n");
     wma->dwMciTimeFormat = 132;
     break;
 default:
            WARN("Bad time format %u!\n", lpParms->dwTimeFormat);
            LeaveCriticalSection(&wma->cs);
     return MCIERR_BAD_TIME_FORMAT;
 }
    }

    if (dwFlags & MCI_SET_DOOR_OPEN) {
 TRACE("No support for door open !\n");
        LeaveCriticalSection(&wma->cs);
 return MCIERR_UNSUPPORTED_FUNCTION;
    }
    if (dwFlags & MCI_SET_DOOR_CLOSED) {
 TRACE("No support for door close !\n");
        LeaveCriticalSection(&wma->cs);
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
     case 130:
  szAudio = " audio all";
  wma->dwSet |= 3;
  break;
     case 129:
  szAudio = " audio left";
  wma->dwSet |= 1;
  break;
     case 128:
  szAudio = " audio right";
  wma->dwSet |= 2;
  break;
     default:
  szAudio = " audio unknown";
  WARN("Unknown audio channel %u\n", lpParms->dwAudio);
  break;
     }
 }
 if (dwFlags & MCI_DGV_SET_SEEK_EXACTLY) {
     szSeek = " seek_exactly";
 }
 FIXME("MCI_SET_ON:%s%s%s\n", szVideo, szAudio, szSeek);
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
     case 130:
  szAudio = " audio all";
  wma->dwSet &= ~3;
  break;
     case 129:
  szAudio = " audio left";
  wma->dwSet &= ~2;
  break;
     case 128:
  szAudio = " audio right";
  wma->dwSet &= ~2;
  break;
     default:
  szAudio = " audio unknown";
  WARN("Unknown audio channel %u\n", lpParms->dwAudio);
  break;
     }
 }
 if (dwFlags & MCI_DGV_SET_SEEK_EXACTLY) {
     szSeek = " seek_exactly";
 }
 FIXME("MCI_SET_OFF:%s%s%s\n", szVideo, szAudio, szSeek);
    }
    if (dwFlags & MCI_DGV_SET_FILEFORMAT) {
 LPCSTR str = "save";
 if (dwFlags & MCI_DGV_SET_STILL)
     str = "capture";

 switch (lpParms->dwFileFormat) {
 case 140: FIXME("Setting file format (%s) to 'AVI'\n", str); break;
 case 139: FIXME("Setting file format (%s) to 'AVSS'\n", str); break;
 case 138: FIXME("Setting file format (%s) to 'DIB'\n", str); break;
 case 137: FIXME("Setting file format (%s) to 'JFIF'\n", str); break;
 case 136: FIXME("Setting file format (%s) to 'JPEG'\n", str); break;
 case 135: FIXME("Setting file format (%s) to 'MPEG'\n", str); break;
 case 134: FIXME("Setting file format (%s) to 'RLE DIB'\n", str); break;
 case 133: FIXME("Setting file format (%s) to 'RJPEG'\n", str); break;
 default: FIXME("Setting unknown file format (%s): %d\n", str, lpParms->dwFileFormat);
 }
    }

    if (dwFlags & MCI_DGV_SET_SPEED) {
 FIXME("Setting speed to %d\n", lpParms->dwSpeed);
    }

    LeaveCriticalSection(&wma->cs);
    return 0;
}
