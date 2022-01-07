
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int HWND ;


 int IDS_LOCALPORT ;
 int IDS_LOCALPORT_MAXLEN ;
 int IDS_NOTHINGTOCONFIG ;
 int IDS_NOTHINGTOCONFIG_MAXLEN ;
 int LOCALUI_hInstance ;
 int LoadStringW (int ,int ,char*,int) ;
 int MB_ICONINFORMATION ;
 int MB_OK ;
 int MessageBoxW (int ,char*,char*,int) ;

__attribute__((used)) static void dlg_nothingtoconfig(HWND hWnd)
{
    WCHAR res_PortW[IDS_LOCALPORT_MAXLEN];
    WCHAR res_nothingW[IDS_NOTHINGTOCONFIG_MAXLEN];

    res_PortW[0] = '\0';
    res_nothingW[0] = '\0';
    LoadStringW(LOCALUI_hInstance, IDS_LOCALPORT, res_PortW, IDS_LOCALPORT_MAXLEN);
    LoadStringW(LOCALUI_hInstance, IDS_NOTHINGTOCONFIG, res_nothingW, IDS_NOTHINGTOCONFIG_MAXLEN);

    MessageBoxW(hWnd, res_nothingW, res_PortW, MB_OK | MB_ICONINFORMATION);
}
