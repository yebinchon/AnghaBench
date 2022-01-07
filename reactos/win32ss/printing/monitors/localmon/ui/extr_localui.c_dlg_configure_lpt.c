
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hXcv; } ;
typedef TYPE_1__ lptconfig_t ;
typedef int LPARAM ;
typedef int HWND ;
typedef int HANDLE ;
typedef int BOOL ;


 int DialogBoxParamW (int ,int ,int ,int ,int ) ;
 int ERROR_CANCELLED ;
 int GetLastError () ;
 int LOCALUI_hInstance ;
 int LPTCONFIG_DIALOG ;
 int MAKEINTRESOURCEW (int ) ;
 int SetLastError (int ) ;
 int TRACE (char*,int ,int ) ;
 int dlgproc_lptconfig ;

__attribute__((used)) static BOOL dlg_configure_lpt(HANDLE hXcv, HWND hWnd)
{
    lptconfig_t data;
    BOOL res;


    data.hXcv = hXcv;

    res = DialogBoxParamW(LOCALUI_hInstance, MAKEINTRESOURCEW(LPTCONFIG_DIALOG), hWnd,
                               dlgproc_lptconfig, (LPARAM) &data);

    TRACE("got %u with %u\n", res, GetLastError());

    if (!res) SetLastError(ERROR_CANCELLED);
    return res;
}
