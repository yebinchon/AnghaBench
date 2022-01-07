
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nUseCount; int fShareable; scalar_t__ handle; int dwTimeFormat; int wNotifyDeviceID; } ;
typedef TYPE_1__ WINE_MCICDAUDIO ;
typedef char WCHAR ;
typedef int UINT ;
struct TYPE_5__ {int dwCallback; int * lpstrElementName; int wDeviceID; } ;
typedef int MCIDEVICEID ;
typedef TYPE_2__* LPMCI_OPEN_PARMSW ;
typedef int DWORD ;


 scalar_t__ CreateFileW (char*,int ,int ,int *,int ,int ,int ) ;
 scalar_t__ DRIVE_CDROM ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 scalar_t__ GetDriveTypeW (char*) ;
 int HWND_32 (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LOWORD (int ) ;
 int MCIERR_CANNOT_LOAD_DRIVER ;
 int MCIERR_FLAGS_NOT_COMPATIBLE ;
 int MCIERR_INVALID_DEVICE_ID ;
 int MCIERR_INVALID_FILE ;
 int MCIERR_MUST_USE_SHAREABLE ;
 int MCIERR_NULL_PARAMETER_BLOCK ;
 int MCI_FORMAT_MSF ;
 int MCI_NOTIFY ;
 int MCI_NOTIFY_SUCCESSFUL ;
 int MCI_OPEN_ELEMENT ;
 int MCI_OPEN_ELEMENT_ID ;
 int MCI_OPEN_SHAREABLE ;
 int OPEN_EXISTING ;
 int TRACE (char*,int ,...) ;
 int WARN (char*,int *) ;
 int debugstr_w (int *) ;
 int isalpha (int ) ;
 int mciDriverNotify (int ,int ,int ) ;
 scalar_t__ mciGetDriverData (int ) ;
 char toupper (int ) ;

__attribute__((used)) static DWORD MCICDA_Open(UINT wDevID, DWORD dwFlags, LPMCI_OPEN_PARMSW lpOpenParms)
{
    MCIDEVICEID dwDeviceID;
    DWORD ret;
    WINE_MCICDAUDIO* wmcda = (WINE_MCICDAUDIO*)mciGetDriverData(wDevID);
    WCHAR root[7], drive = 0;

    TRACE("(%04X, %08X, %p);\n", wDevID, dwFlags, lpOpenParms);

    if (lpOpenParms == ((void*)0)) return MCIERR_NULL_PARAMETER_BLOCK;
    if (wmcda == ((void*)0)) return MCIERR_INVALID_DEVICE_ID;

    dwDeviceID = lpOpenParms->wDeviceID;

    if (wmcda->nUseCount > 0) {



 if (wmcda->fShareable && (dwFlags & MCI_OPEN_SHAREABLE))
     ++wmcda->nUseCount;
 else
     return MCIERR_MUST_USE_SHAREABLE;
    } else {
 wmcda->nUseCount = 1;
 wmcda->fShareable = dwFlags & MCI_OPEN_SHAREABLE;
    }
    if (dwFlags & MCI_OPEN_ELEMENT) {
        if (dwFlags & MCI_OPEN_ELEMENT_ID) {
            WARN("MCI_OPEN_ELEMENT_ID %p! Abort\n", lpOpenParms->lpstrElementName);
            ret = MCIERR_FLAGS_NOT_COMPATIBLE;
            goto the_error;
        }
        TRACE("MCI_OPEN_ELEMENT element name: %s\n", debugstr_w(lpOpenParms->lpstrElementName));



        if (!isalpha(lpOpenParms->lpstrElementName[0]))
        {
            ret = MCIERR_INVALID_FILE;
            goto the_error;
        }
        drive = toupper(lpOpenParms->lpstrElementName[0]);
        root[0] = drive; root[1] = ':'; root[2] = '\\'; root[3] = '\0';
        if (GetDriveTypeW(root) != DRIVE_CDROM)
        {
            ret = MCIERR_INVALID_FILE;
            goto the_error;
        }
    }
    else
    {
        root[0] = 'A'; root[1] = ':'; root[2] = '\\'; root[3] = '\0';
        for ( ; root[0] <= 'Z'; root[0]++)
        {
            if (GetDriveTypeW(root) == DRIVE_CDROM)
            {
                drive = root[0];
                break;
            }
        }
        if (!drive)
        {
            ret = MCIERR_CANNOT_LOAD_DRIVER;
            goto the_error;
        }
    }

    wmcda->wNotifyDeviceID = dwDeviceID;
    wmcda->dwTimeFormat = MCI_FORMAT_MSF;


    root[0] = root[1] = '\\'; root[2] = '.'; root[3] = '\\'; root[4] = drive; root[5] = ':'; root[6] = '\0';
    wmcda->handle = CreateFileW(root, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, 0);
    if (wmcda->handle == INVALID_HANDLE_VALUE)
    {
        ret = MCIERR_MUST_USE_SHAREABLE;
        goto the_error;
    }

    if (dwFlags & MCI_NOTIFY) {
 mciDriverNotify(HWND_32(LOWORD(lpOpenParms->dwCallback)),
   dwDeviceID, MCI_NOTIFY_SUCCESSFUL);
    }
    return 0;

 the_error:
    --wmcda->nUseCount;
    return ret;
}
