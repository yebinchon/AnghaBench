
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int toc ;
struct TYPE_7__ {int handle; } ;
typedef TYPE_1__ WINE_MCICDAUDIO ;
typedef char WCHAR ;
typedef int UINT ;
struct TYPE_8__ {int dwCallback; int dwRetSize; int * lpstrReturn; } ;
typedef TYPE_2__* LPMCI_INFO_PARMSW ;
typedef char const* LPCWSTR ;
typedef int DWORD ;
typedef int CDROM_TOC ;


 int CDROM_Audio_GetSerial (int *) ;
 int IOCTL_CDROM_READ_TOC ;
 int MCICDA_GetError (TYPE_1__*) ;
 TYPE_1__* MCICDA_GetOpenDrv (int ) ;
 int MCICDA_Notify (int ,TYPE_1__*,int ) ;
 int MCIERR_INVALID_DEVICE_ID ;
 int MCIERR_MISSING_PARAMETER ;
 int MCIERR_NO_IDENTITY ;
 int MCIERR_NULL_PARAMETER_BLOCK ;
 int MCIERR_PARAM_OVERFLOW ;
 int MCI_INFO_MEDIA_IDENTITY ;
 int MCI_INFO_MEDIA_UPC ;
 int MCI_INFO_PRODUCT ;
 int MCI_NOTIFY ;
 int MCI_NOTIFY_SUCCESSFUL ;
 int MMSYSERR_NOERROR ;
 int TRACE (char*,int ,...) ;
 int WARN (char*,int) ;
 int debugstr_w (char const*) ;
 int device_io (int ,int ,int *,int ,int *,int,int*,int *) ;
 int lstrcpynW (int *,char const*,int ) ;
 int sprintfW (char*,char const*,int) ;

__attribute__((used)) static DWORD MCICDA_Info(UINT wDevID, DWORD dwFlags, LPMCI_INFO_PARMSW lpParms)
{
    LPCWSTR str = ((void*)0);
    WINE_MCICDAUDIO* wmcda = MCICDA_GetOpenDrv(wDevID);
    DWORD ret = 0;
    WCHAR buffer[16];

    TRACE("(%04X, %08X, %p);\n", wDevID, dwFlags, lpParms);

    if (lpParms == ((void*)0) || lpParms->lpstrReturn == ((void*)0))
 return MCIERR_NULL_PARAMETER_BLOCK;
    if (wmcda == ((void*)0)) return MCIERR_INVALID_DEVICE_ID;

    TRACE("buf=%p, len=%u\n", lpParms->lpstrReturn, lpParms->dwRetSize);

    if (dwFlags & MCI_INFO_PRODUCT) {
        static const WCHAR wszAudioCd[] = {'W','i','n','e','\'','s',' ','a','u','d','i','o',' ','C','D',0};
        str = wszAudioCd;
    } else if (dwFlags & MCI_INFO_MEDIA_UPC) {
 ret = MCIERR_NO_IDENTITY;
    } else if (dwFlags & MCI_INFO_MEDIA_IDENTITY) {
 DWORD res = 0;
        CDROM_TOC toc;
        DWORD br;
 static const WCHAR wszLu[] = {'%','l','u',0};

        if (!device_io(wmcda->handle, IOCTL_CDROM_READ_TOC, ((void*)0), 0,
                             &toc, sizeof(toc), &br, ((void*)0))) {
     return MCICDA_GetError(wmcda);
 }

 res = CDROM_Audio_GetSerial(&toc);
 sprintfW(buffer, wszLu, res);
 str = buffer;
    } else {
 WARN("Don't know this info command (%u)\n", dwFlags);
 ret = MCIERR_MISSING_PARAMETER;
    }
    if (!ret) {
 TRACE("=> %s\n", debugstr_w(str));
 if (lpParms->dwRetSize) {


     lstrcpynW(lpParms->lpstrReturn, str, lpParms->dwRetSize);
 } else ret = MCIERR_PARAM_OVERFLOW;
    }
    if (MMSYSERR_NOERROR==ret && (dwFlags & MCI_NOTIFY))
 MCICDA_Notify(lpParms->dwCallback, wmcda, MCI_NOTIFY_SUCCESSFUL);
    return ret;
}
