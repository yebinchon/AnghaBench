
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int targetW ;
typedef int dw ;
typedef int buffer ;
typedef char WCHAR ;
struct TYPE_4__ {int Length; char const* Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int NTSTATUS ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;


 int ERROR_ACCESS_DENIED ;
 int ERROR_ALREADY_EXISTS ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_SUCCESS ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int KEY_ALL_ACCESS ;
 int REG_DWORD ;
 int REG_LINK ;
 int REG_OPTION_CREATE_LINK ;
 int REG_OPTION_OPEN_LINK ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 int RegCreateKeyExA (int ,char*,int ,int *,int,int ,int *,int *,int *) ;
 int RegDeleteKeyA (int ,char*) ;
 int RegDeleteValueA (int ,char*) ;
 int RegOpenKeyA (int ,char*,int *) ;
 int RegOpenKeyExA (int ,char*,int,int ,int *) ;
 int RegQueryValueExA (int ,char*,int *,int*,int *,int*) ;
 int RegSetValueExA (int ,char*,int ,int ,int *,int) ;
 int hkey_main ;
 int memcpy (char*,char const*,int) ;
 int ok (int,char*,int) ;
 int pNtDeleteKey (int ) ;
 int pRtlFormatCurrentUserKeyPath (TYPE_1__*) ;
 int pRtlFreeUnicodeString (TYPE_1__*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_symlinks(void)
{
    static const WCHAR targetW[] = {'\\','S','o','f','t','w','a','r','e','\\','W','i','n','e',
                                    '\\','T','e','s','t','\\','t','a','r','g','e','t',0};
    BYTE buffer[1024];
    UNICODE_STRING target_str;
    WCHAR *target;
    HKEY key, link;
    NTSTATUS status;
    DWORD target_len, type, len, dw, err;

    if (!pRtlFormatCurrentUserKeyPath || !pNtDeleteKey)
    {
        win_skip( "Can't perform symlink tests\n" );
        return;
    }

    pRtlFormatCurrentUserKeyPath( &target_str );

    target_len = target_str.Length + sizeof(targetW);
    target = HeapAlloc( GetProcessHeap(), 0, target_len );
    memcpy( target, target_str.Buffer, target_str.Length );
    memcpy( target + target_str.Length/sizeof(WCHAR), targetW, sizeof(targetW) );

    err = RegCreateKeyExA( hkey_main, "link", 0, ((void*)0), REG_OPTION_CREATE_LINK,
                           KEY_ALL_ACCESS, ((void*)0), &link, ((void*)0) );
    ok( err == ERROR_SUCCESS, "RegCreateKeyEx failed: %u\n", err );


    err = RegSetValueExA( link, "SymbolicLinkValue", 0, REG_SZ, (BYTE *)"foobar", sizeof("foobar") );
    ok( err == ERROR_ACCESS_DENIED, "RegSetValueEx wrong error %u\n", err );
    err = RegSetValueExA( link, "SymbolicLinkValue", 0, REG_LINK,
                          (BYTE *)target, target_len - sizeof(WCHAR) );
    ok( err == ERROR_SUCCESS, "RegSetValueEx failed error %u\n", err );

    err = RegSetValueExA( link, "link", 0, REG_LINK, (BYTE *)target, target_len - sizeof(WCHAR) );
    ok( err == ERROR_ACCESS_DENIED, "RegSetValueEx wrong error %u\n", err );



    err = RegOpenKeyA( hkey_main, "link", &key );
    ok( err == ERROR_FILE_NOT_FOUND, "RegOpenKey wrong error %u\n", err );

    err = RegCreateKeyExA( hkey_main, "target", 0, ((void*)0), 0, KEY_ALL_ACCESS, ((void*)0), &key, ((void*)0) );
    ok( err == ERROR_SUCCESS, "RegCreateKeyEx failed error %u\n", err );

    dw = 0xbeef;
    err = RegSetValueExA( key, "value", 0, REG_DWORD, (BYTE *)&dw, sizeof(dw) );
    ok( err == ERROR_SUCCESS, "RegSetValueEx failed error %u\n", err );
    RegCloseKey( key );

    err = RegOpenKeyA( hkey_main, "link", &key );
    ok( err == ERROR_SUCCESS, "RegOpenKey failed error %u\n", err );

    len = sizeof(buffer);
    err = RegQueryValueExA( key, "value", ((void*)0), &type, buffer, &len );
    ok( err == ERROR_SUCCESS, "RegOpenKey failed error %u\n", err );
    ok( len == sizeof(DWORD), "wrong len %u\n", len );

    len = sizeof(buffer);
    err = RegQueryValueExA( key, "SymbolicLinkValue", ((void*)0), &type, buffer, &len );
    ok( err == ERROR_FILE_NOT_FOUND, "RegQueryValueEx wrong error %u\n", err );


    err = RegSetValueExA( key, "SymbolicLinkValue", 0, REG_LINK,
                          (BYTE *)target, target_len - sizeof(WCHAR) );
    ok( err == ERROR_SUCCESS, "RegSetValueEx failed error %u\n", err );
    len = sizeof(buffer);
    err = RegQueryValueExA( key, "SymbolicLinkValue", ((void*)0), &type, buffer, &len );
    ok( err == ERROR_SUCCESS, "RegQueryValueEx failed error %u\n", err );
    ok( len == target_len - sizeof(WCHAR), "wrong len %u\n", len );
    err = RegDeleteValueA( key, "SymbolicLinkValue" );
    ok( err == ERROR_SUCCESS, "RegDeleteValue failed error %u\n", err );

    RegCloseKey( key );

    err = RegCreateKeyExA( hkey_main, "link", 0, ((void*)0), 0, KEY_ALL_ACCESS, ((void*)0), &key, ((void*)0) );
    ok( err == ERROR_SUCCESS, "RegCreateKeyEx failed error %u\n", err );

    len = sizeof(buffer);
    err = RegQueryValueExA( key, "value", ((void*)0), &type, buffer, &len );
    ok( err == ERROR_SUCCESS, "RegQueryValueEx failed error %u\n", err );
    ok( len == sizeof(DWORD), "wrong len %u\n", len );

    err = RegQueryValueExA( key, "SymbolicLinkValue", ((void*)0), &type, buffer, &len );
    ok( err == ERROR_FILE_NOT_FOUND, "RegQueryValueEx wrong error %u\n", err );
    RegCloseKey( key );



    err = RegOpenKeyExA( hkey_main, "link", REG_OPTION_OPEN_LINK, KEY_ALL_ACCESS, &key );
    ok( err == ERROR_SUCCESS, "RegOpenKeyEx failed error %u\n", err );
    len = sizeof(buffer);
    err = RegQueryValueExA( key, "SymbolicLinkValue", ((void*)0), &type, buffer, &len );
    ok( err == ERROR_SUCCESS, "RegQueryValueEx failed error %u\n", err );
    ok( len == target_len - sizeof(WCHAR), "wrong len %u\n", len );
    RegCloseKey( key );

    err = RegCreateKeyExA( hkey_main, "link", 0, ((void*)0), REG_OPTION_OPEN_LINK,
                           KEY_ALL_ACCESS, ((void*)0), &key, ((void*)0) );
    ok( err == ERROR_SUCCESS, "RegCreateKeyEx failed error %u\n", err );
    len = sizeof(buffer);
    err = RegQueryValueExA( key, "SymbolicLinkValue", ((void*)0), &type, buffer, &len );
    ok( err == ERROR_SUCCESS, "RegQueryValueEx failed error %u\n", err );
    ok( len == target_len - sizeof(WCHAR), "wrong len %u\n", len );
    RegCloseKey( key );

    err = RegCreateKeyExA( hkey_main, "link", 0, ((void*)0), REG_OPTION_CREATE_LINK,
                           KEY_ALL_ACCESS, ((void*)0), &key, ((void*)0) );
    ok( err == ERROR_ALREADY_EXISTS, "RegCreateKeyEx wrong error %u\n", err );

    err = RegCreateKeyExA( hkey_main, "link", 0, ((void*)0), REG_OPTION_CREATE_LINK | REG_OPTION_OPEN_LINK,
                           KEY_ALL_ACCESS, ((void*)0), &key, ((void*)0) );
    ok( err == ERROR_ALREADY_EXISTS, "RegCreateKeyEx wrong error %u\n", err );

    err = RegDeleteKeyA( hkey_main, "target" );
    ok( err == ERROR_SUCCESS, "RegDeleteKey failed error %u\n", err );

    err = RegDeleteKeyA( hkey_main, "link" );
    ok( err == ERROR_FILE_NOT_FOUND, "RegDeleteKey wrong error %u\n", err );

    status = pNtDeleteKey( link );
    ok( !status, "NtDeleteKey failed: 0x%08x\n", status );
    RegCloseKey( link );

    HeapFree( GetProcessHeap(), 0, target );
    pRtlFreeUnicodeString( &target_str );
}
