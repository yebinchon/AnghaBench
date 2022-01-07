
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bottom; int right; int top; int left; } ;
struct TYPE_6__ {int length; int flags; TYPE_1__ rcNormalPosition; } ;
typedef TYPE_2__ WINDOWPLACEMENT ;
typedef int VOID ;
struct TYPE_7__ {int Maximized; int Bottom; int Right; int Top; int Left; } ;
typedef int SHIMGVW_SETTINGS ;
typedef int LPBYTE ;
typedef int HWND ;
typedef int HKEY ;


 scalar_t__ ERROR_SUCCESS ;
 int GetWindowPlacement (int ,TYPE_2__*) ;
 int HKEY_CURRENT_USER ;
 scalar_t__ IsZoomed (int ) ;
 int KEY_WRITE ;
 int REG_BINARY ;
 int REG_OPTION_NON_VOLATILE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyEx (int ,int ,int ,int *,int ,int ,int *,int *,int *) ;
 int RegSetValueEx (int ,int ,int ,int ,int ,int) ;
 int SW_HIDE ;
 int ShowWindow (int ,int ) ;
 int WPF_RESTORETOMAXIMIZED ;
 int _T (char*) ;
 TYPE_3__ shiSettings ;

__attribute__((used)) static VOID
ImageView_SaveSettings(HWND hwnd)
{
    WINDOWPLACEMENT wp;
    HKEY hKey;

    ShowWindow(hwnd, SW_HIDE);
    wp.length = sizeof(WINDOWPLACEMENT);
    GetWindowPlacement(hwnd, &wp);

    shiSettings.Left = wp.rcNormalPosition.left;
    shiSettings.Top = wp.rcNormalPosition.top;
    shiSettings.Right = wp.rcNormalPosition.right;
    shiSettings.Bottom = wp.rcNormalPosition.bottom;
    shiSettings.Maximized = (IsZoomed(hwnd) || (wp.flags & WPF_RESTORETOMAXIMIZED));

    if (RegCreateKeyEx(HKEY_CURRENT_USER, _T("Software\\ReactOS\\shimgvw"), 0, ((void*)0),
        REG_OPTION_NON_VOLATILE, KEY_WRITE, ((void*)0), &hKey, ((void*)0)) == ERROR_SUCCESS)
    {
        RegSetValueEx(hKey, _T("Settings"), 0, REG_BINARY, (LPBYTE)&shiSettings, sizeof(SHIMGVW_SETTINGS));
        RegCloseKey(hKey);
    }
}
