
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int * LPWSTR ;
typedef int HWND ;
typedef scalar_t__ DWORD ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 scalar_t__ FormatMessageW (int,int *,scalar_t__,int ,int *,int ,int *) ;
 int IDS_LOCALPORT ;
 int IDS_LOCALPORT_MAXLEN ;
 int LOCALUI_hInstance ;
 int LoadStringW (int ,int ,char*,int) ;
 int LocalFree (int *) ;
 int MB_ICONERROR ;
 int MB_OK ;
 int MessageBoxW (int ,int *,char*,int) ;

__attribute__((used)) static void dlg_win32error(HWND hWnd, DWORD lasterror)
{
    WCHAR res_PortW[IDS_LOCALPORT_MAXLEN];
    LPWSTR message = ((void*)0);
    DWORD res;

    res_PortW[0] = '\0';
    LoadStringW(LOCALUI_hInstance, IDS_LOCALPORT, res_PortW, IDS_LOCALPORT_MAXLEN);


    res = FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM,
                        ((void*)0), lasterror, 0, (LPWSTR) &message, 0, ((void*)0));

    if (res > 0) {
        MessageBoxW(hWnd, message, res_PortW, MB_OK | MB_ICONERROR);
        LocalFree(message);
    }
}
