#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  targetW ;
typedef  int /*<<< orphan*/  dw ;
typedef  int /*<<< orphan*/  buffer ;
typedef  char WCHAR ;
struct TYPE_4__ {int Length; char const* Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int NTSTATUS ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int ERROR_ACCESS_DENIED ; 
 int ERROR_ALREADY_EXISTS ; 
 int ERROR_FILE_NOT_FOUND ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  REG_LINK ; 
 int REG_OPTION_CREATE_LINK ; 
 int REG_OPTION_OPEN_LINK ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  hkey_main ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static void FUNC17(void)
{
    static const WCHAR targetW[] = {'\\','S','o','f','t','w','a','r','e','\\','W','i','n','e',
                                    '\\','T','e','s','t','\\','t','a','r','g','e','t',0};
    BYTE buffer[1024];
    UNICODE_STRING target_str;
    WCHAR *target;
    HKEY key, link;
    NTSTATUS status;
    DWORD target_len, type, len, dw, err;

    if (!&pRtlFormatCurrentUserKeyPath || !&pNtDeleteKey)
    {
        FUNC16( "Can't perform symlink tests\n" );
        return;
    }

    FUNC14( &target_str );

    target_len = target_str.Length + sizeof(targetW);
    target = FUNC1( FUNC0(), 0, target_len );
    FUNC11( target, target_str.Buffer, target_str.Length );
    FUNC11( target + target_str.Length/sizeof(WCHAR), targetW, sizeof(targetW) );

    err = FUNC4( hkey_main, "link", 0, NULL, REG_OPTION_CREATE_LINK,
                           KEY_ALL_ACCESS, NULL, &link, NULL );
    FUNC12( err == ERROR_SUCCESS, "RegCreateKeyEx failed: %u\n", err );

    /* REG_SZ is not allowed */
    err = FUNC10( link, "SymbolicLinkValue", 0, REG_SZ, (BYTE *)"foobar", sizeof("foobar") );
    FUNC12( err == ERROR_ACCESS_DENIED, "RegSetValueEx wrong error %u\n", err );
    err = FUNC10( link, "SymbolicLinkValue", 0, REG_LINK,
                          (BYTE *)target, target_len - sizeof(WCHAR) );
    FUNC12( err == ERROR_SUCCESS, "RegSetValueEx failed error %u\n", err );
    /* other values are not allowed */
    err = FUNC10( link, "link", 0, REG_LINK, (BYTE *)target, target_len - sizeof(WCHAR) );
    FUNC12( err == ERROR_ACCESS_DENIED, "RegSetValueEx wrong error %u\n", err );

    /* try opening the target through the link */

    err = FUNC7( hkey_main, "link", &key );
    FUNC12( err == ERROR_FILE_NOT_FOUND, "RegOpenKey wrong error %u\n", err );

    err = FUNC4( hkey_main, "target", 0, NULL, 0, KEY_ALL_ACCESS, NULL, &key, NULL );
    FUNC12( err == ERROR_SUCCESS, "RegCreateKeyEx failed error %u\n", err );

    dw = 0xbeef;
    err = FUNC10( key, "value", 0, REG_DWORD, (BYTE *)&dw, sizeof(dw) );
    FUNC12( err == ERROR_SUCCESS, "RegSetValueEx failed error %u\n", err );
    FUNC3( key );

    err = FUNC7( hkey_main, "link", &key );
    FUNC12( err == ERROR_SUCCESS, "RegOpenKey failed error %u\n", err );

    len = sizeof(buffer);
    err = FUNC9( key, "value", NULL, &type, buffer, &len );
    FUNC12( err == ERROR_SUCCESS, "RegOpenKey failed error %u\n", err );
    FUNC12( len == sizeof(DWORD), "wrong len %u\n", len );

    len = sizeof(buffer);
    err = FUNC9( key, "SymbolicLinkValue", NULL, &type, buffer, &len );
    FUNC12( err == ERROR_FILE_NOT_FOUND, "RegQueryValueEx wrong error %u\n", err );

    /* REG_LINK can be created in non-link keys */
    err = FUNC10( key, "SymbolicLinkValue", 0, REG_LINK,
                          (BYTE *)target, target_len - sizeof(WCHAR) );
    FUNC12( err == ERROR_SUCCESS, "RegSetValueEx failed error %u\n", err );
    len = sizeof(buffer);
    err = FUNC9( key, "SymbolicLinkValue", NULL, &type, buffer, &len );
    FUNC12( err == ERROR_SUCCESS, "RegQueryValueEx failed error %u\n", err );
    FUNC12( len == target_len - sizeof(WCHAR), "wrong len %u\n", len );
    err = FUNC6( key, "SymbolicLinkValue" );
    FUNC12( err == ERROR_SUCCESS, "RegDeleteValue failed error %u\n", err );

    FUNC3( key );

    err = FUNC4( hkey_main, "link", 0, NULL, 0, KEY_ALL_ACCESS, NULL, &key, NULL );
    FUNC12( err == ERROR_SUCCESS, "RegCreateKeyEx failed error %u\n", err );

    len = sizeof(buffer);
    err = FUNC9( key, "value", NULL, &type, buffer, &len );
    FUNC12( err == ERROR_SUCCESS, "RegQueryValueEx failed error %u\n", err );
    FUNC12( len == sizeof(DWORD), "wrong len %u\n", len );

    err = FUNC9( key, "SymbolicLinkValue", NULL, &type, buffer, &len );
    FUNC12( err == ERROR_FILE_NOT_FOUND, "RegQueryValueEx wrong error %u\n", err );
    FUNC3( key );

    /* now open the symlink itself */

    err = FUNC8( hkey_main, "link", REG_OPTION_OPEN_LINK, KEY_ALL_ACCESS, &key );
    FUNC12( err == ERROR_SUCCESS, "RegOpenKeyEx failed error %u\n", err );
    len = sizeof(buffer);
    err = FUNC9( key, "SymbolicLinkValue", NULL, &type, buffer, &len );
    FUNC12( err == ERROR_SUCCESS, "RegQueryValueEx failed error %u\n", err );
    FUNC12( len == target_len - sizeof(WCHAR), "wrong len %u\n", len );
    FUNC3( key );

    err = FUNC4( hkey_main, "link", 0, NULL, REG_OPTION_OPEN_LINK,
                           KEY_ALL_ACCESS, NULL, &key, NULL );
    FUNC12( err == ERROR_SUCCESS, "RegCreateKeyEx failed error %u\n", err );
    len = sizeof(buffer);
    err = FUNC9( key, "SymbolicLinkValue", NULL, &type, buffer, &len );
    FUNC12( err == ERROR_SUCCESS, "RegQueryValueEx failed error %u\n", err );
    FUNC12( len == target_len - sizeof(WCHAR), "wrong len %u\n", len );
    FUNC3( key );

    err = FUNC4( hkey_main, "link", 0, NULL, REG_OPTION_CREATE_LINK,
                           KEY_ALL_ACCESS, NULL, &key, NULL );
    FUNC12( err == ERROR_ALREADY_EXISTS, "RegCreateKeyEx wrong error %u\n", err );

    err = FUNC4( hkey_main, "link", 0, NULL, REG_OPTION_CREATE_LINK | REG_OPTION_OPEN_LINK,
                           KEY_ALL_ACCESS, NULL, &key, NULL );
    FUNC12( err == ERROR_ALREADY_EXISTS, "RegCreateKeyEx wrong error %u\n", err );

    err = FUNC5( hkey_main, "target" );
    FUNC12( err == ERROR_SUCCESS, "RegDeleteKey failed error %u\n", err );

    err = FUNC5( hkey_main, "link" );
    FUNC12( err == ERROR_FILE_NOT_FOUND, "RegDeleteKey wrong error %u\n", err );

    status = FUNC13( link );
    FUNC12( !status, "NtDeleteKey failed: 0x%08x\n", status );
    FUNC3( link );

    FUNC2( FUNC0(), 0, target );
    FUNC15( &target_str );
}