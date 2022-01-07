
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dw ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ KEY_ALL_ACCESS ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExA (int ,char const*,int ,int *,int ,scalar_t__,int *,int *,int *) ;
 scalar_t__ RegQueryValueExA (int ,char*,int *,scalar_t__*,int *,scalar_t__*) ;
 int ok (int,char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static DWORD get_key_value( HKEY root, const char *name, DWORD flags )
{
    HKEY key;
    DWORD err, type, dw, len = sizeof(dw);

    err = RegCreateKeyExA( root, name, 0, ((void*)0), 0, flags | KEY_ALL_ACCESS, ((void*)0), &key, ((void*)0) );
    if (err == ERROR_FILE_NOT_FOUND) return 0;
    ok( err == ERROR_SUCCESS, "%08x: RegCreateKeyEx failed: %u\n", flags, err );

    err = RegQueryValueExA( key, "value", ((void*)0), &type, (BYTE *)&dw, &len );
    if (err == ERROR_FILE_NOT_FOUND)
        dw = 0;
    else
        ok( err == ERROR_SUCCESS, "%08x: RegQueryValueEx failed: %u\n", flags, err );
    RegCloseKey( key );
    return dw;
}
