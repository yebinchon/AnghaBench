
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* PHANDLE ;
typedef scalar_t__ LPTSTR ;
typedef int LPARAM ;
typedef int HWND ;


 int COMPRESSERRDLG ;
 int CloseHandle (scalar_t__) ;
 int CompressErrDialogProc ;
 int DialogBoxParam (int ,scalar_t__,int ,int ,int ) ;
 int IDRETRY ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ MAKEINTRESOURCE (int ) ;
 int WF_RETRY_CREATE ;
 int WF_RETRY_DEVIO ;
 int hAppInstance ;
 int hwndFrame ;

int CompressErrMessageBox(
    HWND hwndActive,
    LPTSTR szFile,
    PHANDLE phFile)
{
    int rc;





    rc = DialogBoxParam( hAppInstance,
                         (LPTSTR) MAKEINTRESOURCE(COMPRESSERRDLG),
                         hwndFrame,
                         CompressErrDialogProc,
                         (LPARAM)szFile );




    if (rc == IDRETRY)
    {
        if (*phFile == INVALID_HANDLE_VALUE)
        {
            return (WF_RETRY_CREATE);
        }
        else
        {
            return (WF_RETRY_DEVIO);
        }
    }
    else
    {





        if (*phFile != INVALID_HANDLE_VALUE)
        {
            CloseHandle(*phFile);
            *phFile = INVALID_HANDLE_VALUE;
        }

        return (rc);
    }
}
