
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int logfont ;
struct TYPE_5__ {scalar_t__ top; scalar_t__ left; scalar_t__ bottom; scalar_t__ right; } ;
struct TYPE_6__ {int cbSize; TYPE_1__ rcWindow; } ;
typedef TYPE_2__ WINDOWINFO ;
struct TYPE_7__ {int hfont; int hMainWnd; } ;
typedef int LPBYTE ;
typedef int LOGFONTW ;
typedef scalar_t__ INT ;
typedef int HKEY ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int GetObjectW (int ,int,int *) ;
 int GetWindowInfo (int ,TYPE_2__*) ;
 TYPE_3__ Globals ;
 int HKEY_CURRENT_USER ;
 int KEY_SET_VALUE ;
 int REG_BINARY ;
 int REG_DWORD ;
 int REG_OPTION_NON_VOLATILE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,int ,int ,int *,int ,int ,int *,int *,int *) ;
 scalar_t__ RegOpenKeyExW (int ,int ,int ,int ,int *) ;
 int RegSetValueExW (int ,int ,int ,int ,int ,int) ;
 int reg_height ;
 int reg_logfont ;
 int reg_start_x ;
 int reg_start_y ;
 int reg_width ;
 int registry_key ;

__attribute__((used)) static void save_registry_settings(void)
{
 WINDOWINFO wi;
 HKEY hKey;
 INT width, height;
 LOGFONTW logfont;

 wi.cbSize = sizeof( WINDOWINFO );
 GetWindowInfo(Globals.hMainWnd, &wi);
 width = wi.rcWindow.right - wi.rcWindow.left;
 height = wi.rcWindow.bottom - wi.rcWindow.top;

 if ( RegOpenKeyExW( HKEY_CURRENT_USER, registry_key,
                            0, KEY_SET_VALUE, &hKey ) != ERROR_SUCCESS )
 {

                if ( RegCreateKeyExW( HKEY_CURRENT_USER, registry_key,
                                      0, ((void*)0), REG_OPTION_NON_VOLATILE,
                                      KEY_SET_VALUE, ((void*)0), &hKey, ((void*)0) ) != ERROR_SUCCESS )
  {

   return;
  }
 }

        RegSetValueExW( hKey, reg_start_x, 0, REG_DWORD,
                        (LPBYTE) &wi.rcWindow.left, sizeof(DWORD) );
        RegSetValueExW( hKey, reg_start_y, 0, REG_DWORD,
                        (LPBYTE) &wi.rcWindow.top, sizeof(DWORD) );
        RegSetValueExW( hKey, reg_width, 0, REG_DWORD,
                        (LPBYTE) &width, sizeof(DWORD) );
        RegSetValueExW( hKey, reg_height, 0, REG_DWORD,
                        (LPBYTE) &height, sizeof(DWORD) );
        GetObjectW(Globals.hfont, sizeof(logfont), &logfont);
        RegSetValueExW( hKey, reg_logfont, 0, REG_BINARY,
                        (LPBYTE)&logfont, sizeof(LOGFONTW) );


 RegCloseKey( hKey );
}
