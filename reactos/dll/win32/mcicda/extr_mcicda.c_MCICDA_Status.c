
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int fmt ;
typedef int data ;
typedef int WORD ;
struct TYPE_21__ {int dwTimeFormat; int handle; } ;
typedef TYPE_3__ WINE_MCICDAUDIO ;
typedef int UINT ;
struct TYPE_25__ {void* Format; } ;
struct TYPE_24__ {size_t FirstTrack; size_t LastTrack; TYPE_1__* TrackData; } ;
struct TYPE_23__ {int dwItem; int dwReturn; size_t dwTrack; int dwCallback; } ;
struct TYPE_20__ {int TrackNumber; int AbsoluteAddress; } ;
struct TYPE_22__ {TYPE_2__ CurrentPosition; } ;
struct TYPE_19__ {int Control; } ;
typedef TYPE_4__ SUB_Q_CHANNEL_DATA ;
typedef TYPE_5__* LPMCI_STATUS_PARMS ;
typedef int DWORD ;
typedef TYPE_6__ CDROM_TOC ;
typedef TYPE_7__ CDROM_SUB_Q_DATA_FORMAT ;


 int FALSE ;
 int FIXME (char*,int) ;
 int FRAME_OF_ADDR (int ) ;
 void* FRAME_OF_TOC (TYPE_6__,size_t) ;
 scalar_t__ HRESULT_CODE (int) ;
 void* IOCTL_CDROM_CURRENT_POSITION ;
 int IOCTL_CDROM_READ_Q_CHANNEL ;
 int LOWORD (int) ;
 void* MAKEMCIRESOURCE (int,int) ;
 void* MCICDA_CalcTime (TYPE_3__*,int,int,int*) ;
 int MCICDA_GetError (TYPE_3__*) ;
 TYPE_3__* MCICDA_GetOpenDrv (int ) ;
 int MCICDA_GetStatus (TYPE_3__*) ;
 int MCICDA_Notify (int ,TYPE_3__*,int ) ;
 int MCICDA_ReadTOC (TYPE_3__*,TYPE_6__*,int*) ;
 int MCIERR_FLAGS_NOT_COMPATIBLE ;
 int MCIERR_INVALID_DEVICE_ID ;
 int MCIERR_MISSING_PARAMETER ;
 int MCIERR_NULL_PARAMETER_BLOCK ;
 int MCIERR_OUTOFRANGE ;
 int MCIERR_UNSUPPORTED_FUNCTION ;

 int MCI_CDA_TRACK_AUDIO ;
 int MCI_CDA_TRACK_OTHER ;
 int MCI_FALSE ;
 int MCI_FORMAT_MSF ;
 int MCI_FORMAT_RETURN_BASE ;
 int MCI_FORMAT_TMSF ;


 int MCI_NOTIFY ;
 int MCI_NOTIFY_SUCCESSFUL ;
 int MCI_RESOURCE_RETURNED ;

 int MCI_STATUS_ITEM ;
 int MCI_TRUE ;
 int TRACE (char*,...) ;
 int TRUE ;
 int device_io (int ,int ,TYPE_7__*,int,TYPE_4__*,int,int*,int *) ;

__attribute__((used)) static DWORD MCICDA_Status(UINT wDevID, DWORD dwFlags, LPMCI_STATUS_PARMS lpParms)
{
    WINE_MCICDAUDIO* wmcda = MCICDA_GetOpenDrv(wDevID);
    DWORD ret = 0;
    CDROM_SUB_Q_DATA_FORMAT fmt;
    SUB_Q_CHANNEL_DATA data;
    CDROM_TOC toc;
    DWORD br;

    TRACE("(%04X, %08X, %p);\n", wDevID, dwFlags, lpParms);

    if (lpParms == ((void*)0)) return MCIERR_NULL_PARAMETER_BLOCK;
    if (wmcda == ((void*)0)) return MCIERR_INVALID_DEVICE_ID;

    if (dwFlags & MCI_STATUS_ITEM) {
 TRACE("dwItem = %x\n", lpParms->dwItem);
 switch (lpParms->dwItem) {
 case 137:
            fmt.Format = IOCTL_CDROM_CURRENT_POSITION;
            if (!device_io(wmcda->handle, IOCTL_CDROM_READ_Q_CHANNEL, &fmt, sizeof(fmt),
                                 &data, sizeof(data), &br, ((void*)0)))
            {
  return MCICDA_GetError(wmcda);

     }
     lpParms->dwReturn = data.CurrentPosition.TrackNumber;
            TRACE("CURRENT_TRACK=%lu\n", lpParms->dwReturn);
     break;
 case 136:
     if (!MCICDA_ReadTOC(wmcda, &toc, &br))
                return MCICDA_GetError(wmcda);

     if (dwFlags & 128) {
  TRACE("MCI_TRACK #%u LENGTH=??? !\n", lpParms->dwTrack);
  if (lpParms->dwTrack < toc.FirstTrack || lpParms->dwTrack > toc.LastTrack)
      return MCIERR_OUTOFRANGE;
  lpParms->dwReturn = FRAME_OF_TOC(toc, lpParms->dwTrack + 1) -
                    FRAME_OF_TOC(toc, lpParms->dwTrack);


  if (lpParms->dwTrack == toc.LastTrack)
      lpParms->dwReturn--;
     } else {



  lpParms->dwReturn = FRAME_OF_TOC(toc, toc.LastTrack + 1) -
                    FRAME_OF_TOC(toc, toc.FirstTrack) - 1;
     }
     lpParms->dwReturn = MCICDA_CalcTime(wmcda,
       (wmcda->dwTimeFormat == MCI_FORMAT_TMSF)
          ? MCI_FORMAT_MSF : wmcda->dwTimeFormat,
       lpParms->dwReturn,
       &ret);
            TRACE("LENGTH=%lu\n", lpParms->dwReturn);
     break;
 case 134:
            lpParms->dwReturn = MCICDA_GetStatus(wmcda);
            TRACE("MCI_STATUS_MODE=%08lX\n", lpParms->dwReturn);
     lpParms->dwReturn = MAKEMCIRESOURCE(lpParms->dwReturn, lpParms->dwReturn);
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 135:
     lpParms->dwReturn = (MCICDA_GetStatus(wmcda) == 138) ?
  MAKEMCIRESOURCE(FALSE, MCI_FALSE) : MAKEMCIRESOURCE(TRUE, MCI_TRUE);
     TRACE("MCI_STATUS_MEDIA_PRESENT =%c!\n", LOWORD(lpParms->dwReturn) ? 'Y' : 'N');
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 133:
     if (!MCICDA_ReadTOC(wmcda, &toc, &br))
                return MCICDA_GetError(wmcda);

     lpParms->dwReturn = toc.LastTrack - toc.FirstTrack + 1;
            TRACE("MCI_STATUS_NUMBER_OF_TRACKS = %lu\n", lpParms->dwReturn);
     if (lpParms->dwReturn == (WORD)-1)
  return MCICDA_GetError(wmcda);
     break;
 case 132:
            switch (dwFlags & (130 | 128)) {
            case 130:
                if (!MCICDA_ReadTOC(wmcda, &toc, &br))
                    return MCICDA_GetError(wmcda);

  lpParms->dwReturn = FRAME_OF_TOC(toc, toc.FirstTrack);
  TRACE("get MCI_STATUS_START !\n");
                break;
            case 128:
                if (!MCICDA_ReadTOC(wmcda, &toc, &br))
                    return MCICDA_GetError(wmcda);

  if (lpParms->dwTrack < toc.FirstTrack || lpParms->dwTrack > toc.LastTrack)
      return MCIERR_OUTOFRANGE;
  lpParms->dwReturn = FRAME_OF_TOC(toc, lpParms->dwTrack);
  TRACE("get MCI_TRACK #%u !\n", lpParms->dwTrack);
                break;
            case 0:
                fmt.Format = IOCTL_CDROM_CURRENT_POSITION;
                if (!device_io(wmcda->handle, IOCTL_CDROM_READ_Q_CHANNEL, &fmt, sizeof(fmt),
                                     &data, sizeof(data), &br, ((void*)0))) {
                    return MCICDA_GetError(wmcda);
                }
                lpParms->dwReturn = FRAME_OF_ADDR(data.CurrentPosition.AbsoluteAddress);
                break;
            default:
                return MCIERR_FLAGS_NOT_COMPATIBLE;
            }
     lpParms->dwReturn = MCICDA_CalcTime(wmcda, wmcda->dwTimeFormat, lpParms->dwReturn, &ret);
            TRACE("MCI_STATUS_POSITION=%08lX\n", lpParms->dwReturn);
     break;
 case 131:
     TRACE("MCI_STATUS_READY !\n");
            switch (MCICDA_GetStatus(wmcda))
            {
            case 139:
            case 138:
                lpParms->dwReturn = MAKEMCIRESOURCE(FALSE, MCI_FALSE);
                break;
            default:
                lpParms->dwReturn = MAKEMCIRESOURCE(TRUE, MCI_TRUE);
                break;
            }
     TRACE("MCI_STATUS_READY=%u!\n", LOWORD(lpParms->dwReturn));
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 129:
     lpParms->dwReturn = MAKEMCIRESOURCE(wmcda->dwTimeFormat, MCI_FORMAT_RETURN_BASE + wmcda->dwTimeFormat);
     TRACE("MCI_STATUS_TIME_FORMAT=%08x!\n", LOWORD(lpParms->dwReturn));
     ret = MCI_RESOURCE_RETURNED;
     break;
 case 4001:
 case 140:
     if (!(dwFlags & 128))
  ret = MCIERR_MISSING_PARAMETER;
     else {
                if (!MCICDA_ReadTOC(wmcda, &toc, &br))
                    return MCICDA_GetError(wmcda);

  if (lpParms->dwTrack < toc.FirstTrack || lpParms->dwTrack > toc.LastTrack)
      ret = MCIERR_OUTOFRANGE;
  else
      lpParms->dwReturn = (toc.TrackData[lpParms->dwTrack - toc.FirstTrack].Control & 0x04) ?
                                         MCI_CDA_TRACK_OTHER : MCI_CDA_TRACK_AUDIO;

     }
            TRACE("MCI_CDA_STATUS_TYPE_TRACK[%d]=%ld\n", lpParms->dwTrack, lpParms->dwReturn);
     break;
 default:
            FIXME("unknown command %08X !\n", lpParms->dwItem);
     return MCIERR_UNSUPPORTED_FUNCTION;
 }
    } else return MCIERR_MISSING_PARAMETER;
    if ((dwFlags & MCI_NOTIFY) && HRESULT_CODE(ret)==0)
 MCICDA_Notify(lpParms->dwCallback, wmcda, MCI_NOTIFY_SUCCESSFUL);
    return ret;
}
