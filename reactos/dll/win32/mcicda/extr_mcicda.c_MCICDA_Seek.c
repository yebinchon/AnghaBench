
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int seek ;
struct TYPE_15__ {int handle; } ;
typedef TYPE_1__ WINE_MCICDAUDIO ;
typedef int UINT ;
struct TYPE_18__ {int M; int S; int F; } ;
struct TYPE_17__ {int LastTrack; int FirstTrack; } ;
struct TYPE_16__ {int dwCallback; int dwTo; } ;
typedef TYPE_2__* LPMCI_SEEK_PARMS ;
typedef int DWORD ;
typedef TYPE_3__ CDROM_TOC ;
typedef TYPE_4__ CDROM_SEEK_AUDIO_MSF ;


 int CDFRAMES_PERMIN ;
 int CDFRAMES_PERSEC ;
 int FRAME_OF_TOC (TYPE_3__,int ) ;
 int IOCTL_CDROM_SEEK_AUDIO_MSF ;
 int MCICDA_CalcFrame (TYPE_1__*,int ) ;
 int MCICDA_GetError (TYPE_1__*) ;
 TYPE_1__* MCICDA_GetOpenDrv (int ) ;
 int MCICDA_Notify (int ,TYPE_1__*,int ) ;
 int MCICDA_ReadTOC (TYPE_1__*,TYPE_3__*,int*) ;
 int MCICDA_SkipDataTracks (TYPE_1__*,int*) ;
 int MCICDA_Stop (int ,int ,int ) ;
 int MCIERR_FLAGS_NOT_COMPATIBLE ;
 int MCIERR_HARDWARE ;
 int MCIERR_INVALID_DEVICE_ID ;
 int MCIERR_MISSING_PARAMETER ;
 int MCIERR_NULL_PARAMETER_BLOCK ;
 int MCI_NOTIFY ;
 int MCI_NOTIFY_SUCCESSFUL ;



 int MCI_WAIT ;
 int TRACE (char*,...) ;
 int device_io (int ,int ,TYPE_4__*,int,int *,int ,int*,int *) ;

__attribute__((used)) static DWORD MCICDA_Seek(UINT wDevID, DWORD dwFlags, LPMCI_SEEK_PARMS lpParms)
{
    DWORD at;
    WINE_MCICDAUDIO* wmcda = MCICDA_GetOpenDrv(wDevID);
    CDROM_SEEK_AUDIO_MSF seek;
    DWORD br, position, ret;
    CDROM_TOC toc;

    TRACE("(%04X, %08X, %p);\n", wDevID, dwFlags, lpParms);

    if (wmcda == ((void*)0)) return MCIERR_INVALID_DEVICE_ID;
    if (lpParms == ((void*)0)) return MCIERR_NULL_PARAMETER_BLOCK;

    position = dwFlags & (129|130|128);
    if (!position) return MCIERR_MISSING_PARAMETER;
    if (position&(position-1)) return MCIERR_FLAGS_NOT_COMPATIBLE;




    MCICDA_Stop(wDevID, MCI_WAIT, 0);

    if (!MCICDA_ReadTOC(wmcda, &toc, &br))
        return MCICDA_GetError(wmcda);

    switch (position) {
    case 129:
 TRACE("Seeking to start\n");
 at = FRAME_OF_TOC(toc,toc.FirstTrack);
 if ( (ret=MCICDA_SkipDataTracks(wmcda, &at)) )
   return ret;
 break;
    case 130:
 TRACE("Seeking to end\n");


 at = FRAME_OF_TOC(toc, toc.LastTrack + 1) - 1;
 if ( (ret=MCICDA_SkipDataTracks(wmcda, &at)) )
   return ret;
 break;
    case 128:
 TRACE("Seeking to %u\n", lpParms->dwTo);
        at = MCICDA_CalcFrame(wmcda, lpParms->dwTo);
 if ( (ret=MCICDA_SkipDataTracks(wmcda, &at)) )
   return ret;
 break;
    default:
 return MCIERR_FLAGS_NOT_COMPATIBLE;
    }

    {
        seek.M = at / CDFRAMES_PERMIN;
        seek.S = (at / CDFRAMES_PERSEC) % 60;
        seek.F = at % CDFRAMES_PERSEC;
        if (!device_io(wmcda->handle, IOCTL_CDROM_SEEK_AUDIO_MSF, &seek, sizeof(seek),
                             ((void*)0), 0, &br, ((void*)0)))
            return MCIERR_HARDWARE;
    }

    if (dwFlags & MCI_NOTIFY)
 MCICDA_Notify(lpParms->dwCallback, wmcda, MCI_NOTIFY_SUCCESSFUL);
    return 0;
}
