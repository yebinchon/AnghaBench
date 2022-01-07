
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REGSAM ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int Connections ;
 int HKEY_LOCAL_MACHINE ;
 int RegCloseKey (int ) ;
 int RegCreateKeyExW (int ,int ,int ,int *,int ,int ,int *,int *,int *) ;
 int RegDeleteValueW (int ,int ) ;
 int RegSetValueExW (int ,int ,int ,scalar_t__,int *,scalar_t__) ;
 int WinHttpSettings ;

__attribute__((used)) static void set_proxy( REGSAM access, BYTE *buf, DWORD len, DWORD type )
{
    HKEY hkey;
    if (!RegCreateKeyExW( HKEY_LOCAL_MACHINE, Connections, 0, ((void*)0), 0, access, ((void*)0), &hkey, ((void*)0) ))
    {
        if (len) RegSetValueExW( hkey, WinHttpSettings, 0, type, buf, len );
        else RegDeleteValueW( hkey, WinHttpSettings );
        RegCloseKey( hkey );
    }
}
