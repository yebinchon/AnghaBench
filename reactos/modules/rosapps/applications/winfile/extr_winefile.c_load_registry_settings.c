
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* height; void* width; void* start_y; void* start_x; } ;
typedef TYPE_1__ windowOptions ;
typedef int logfont ;
struct TYPE_5__ {int hfont; } ;
typedef int LPBYTE ;
typedef int LOGFONTW ;
typedef int HKEY ;
typedef int DWORD ;


 void* CW_USEDEFAULT ;
 int CreateFontIndirectW (int *) ;
 int DEFAULT_GUI_FONT ;
 scalar_t__ ERROR_SUCCESS ;
 int GetObjectW (int ,int,int *) ;
 int GetStockObject (int ) ;
 TYPE_3__ Globals ;
 int HKEY_CURRENT_USER ;
 int KEY_QUERY_VALUE ;
 int RegCloseKey (int ) ;
 int RegOpenKeyExW (int ,int ,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,int ,int *,int*,int ,int*) ;
 int reg_height ;
 int reg_logfont ;
 int reg_start_x ;
 int reg_start_y ;
 int reg_width ;
 int registry_key ;

__attribute__((used)) static windowOptions load_registry_settings(void)
{
 DWORD size;
 DWORD type;
 HKEY hKey;
 windowOptions opts;
 LOGFONTW logfont;

        RegOpenKeyExW( HKEY_CURRENT_USER, registry_key,
                       0, KEY_QUERY_VALUE, &hKey );

 size = sizeof(DWORD);

        if( RegQueryValueExW( hKey, reg_start_x, ((void*)0), &type,
                              (LPBYTE) &opts.start_x, &size ) != ERROR_SUCCESS )
  opts.start_x = CW_USEDEFAULT;

        if( RegQueryValueExW( hKey, reg_start_y, ((void*)0), &type,
                              (LPBYTE) &opts.start_y, &size ) != ERROR_SUCCESS )
  opts.start_y = CW_USEDEFAULT;

        if( RegQueryValueExW( hKey, reg_width, ((void*)0), &type,
                              (LPBYTE) &opts.width, &size ) != ERROR_SUCCESS )
  opts.width = CW_USEDEFAULT;

        if( RegQueryValueExW( hKey, reg_height, ((void*)0), &type,
                              (LPBYTE) &opts.height, &size ) != ERROR_SUCCESS )
  opts.height = CW_USEDEFAULT;
 size=sizeof(logfont);
 if( RegQueryValueExW( hKey, reg_logfont, ((void*)0), &type,
                              (LPBYTE) &logfont, &size ) != ERROR_SUCCESS )
  GetObjectW(GetStockObject(DEFAULT_GUI_FONT),sizeof(logfont),&logfont);

 RegCloseKey( hKey );

 Globals.hfont = CreateFontIndirectW(&logfont);
 return opts;
}
