
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 int Connections ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 int RegOpenKeyExW (int ,int ,int ,int ,int *) ;
 int RegQueryValueExW (int ,int ,int *,scalar_t__*,int *,scalar_t__*) ;
 int WinHttpSettings ;

__attribute__((used)) static DWORD get_default_proxy_reg_value( BYTE *buf, DWORD len, DWORD *type )
{
    LONG l;
    HKEY key;
    DWORD ret = 0;

    l = RegOpenKeyExW( HKEY_LOCAL_MACHINE, Connections, 0, KEY_READ, &key );
    if (!l)
    {
        DWORD size = 0;

        l = RegQueryValueExW( key, WinHttpSettings, ((void*)0), type, ((void*)0), &size );
        if (!l)
        {
            if (size <= len)
                l = RegQueryValueExW( key, WinHttpSettings, ((void*)0), type, buf,
                    &size );
            if (!l)
                ret = size;
        }
        RegCloseKey( key );
    }
    return ret;
}
