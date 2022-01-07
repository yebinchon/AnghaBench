
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* LPWSTR ;
typedef int LPCWSTR ;
typedef int HWND ;
typedef int DWORD ;


 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int IDS_LOCALPORT ;
 int IDS_LOCALPORT_MAXLEN ;
 int IDS_PORTEXISTS ;
 int IDS_PORTEXISTS_MAXLEN ;
 int LOCALUI_hInstance ;
 int LoadStringW (int ,int ,char*,int) ;
 int MB_ICONERROR ;
 int MB_OK ;
 int MessageBoxW (int ,char*,char*,int) ;
 int lstrlenW (int ) ;
 int snprintfW (char*,int,char*,int ) ;

__attribute__((used)) static void dlg_port_already_exists(HWND hWnd, LPCWSTR portname)
{
    WCHAR res_PortW[IDS_LOCALPORT_MAXLEN];
    WCHAR res_PortExistsW[IDS_PORTEXISTS_MAXLEN];
    LPWSTR message;
    DWORD len;

    res_PortW[0] = '\0';
    res_PortExistsW[0] = '\0';
    LoadStringW(LOCALUI_hInstance, IDS_LOCALPORT, res_PortW, IDS_LOCALPORT_MAXLEN);
    LoadStringW(LOCALUI_hInstance, IDS_PORTEXISTS, res_PortExistsW, IDS_PORTEXISTS_MAXLEN);

    len = lstrlenW(portname) + IDS_PORTEXISTS_MAXLEN + 1;
    message = HeapAlloc(GetProcessHeap(), 0, len * sizeof(WCHAR));
    if (message) {
        message[0] = '\0';
        snprintfW(message, len, res_PortExistsW, portname);
        MessageBoxW(hWnd, message, res_PortW, MB_OK | MB_ICONERROR);
        HeapFree(GetProcessHeap(), 0, message);
    }
}
