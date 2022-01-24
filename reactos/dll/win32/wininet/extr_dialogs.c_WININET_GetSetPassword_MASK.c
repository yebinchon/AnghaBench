#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int WORD ;
typedef  char WCHAR ;
typedef  int UINT ;
typedef  char* LPWSTR ;
typedef  char const* LPCWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  IDC_PASSWORD ; 
 int /*<<< orphan*/  IDC_USERNAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int TRUE ; 
 scalar_t__ WN_SUCCESS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 char* FUNC7 (char*,char) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static BOOL FUNC9( HWND hdlg, LPCWSTR szServer, 
                                    LPCWSTR szRealm, BOOL bSet )
{
    WCHAR szResource[0x80], szUserPass[0x40];
    LPWSTR p;
    HWND hUserItem, hPassItem;
    DWORD r, dwMagic = 19;
    UINT r_len, u_len;
    WORD sz;
    static const WCHAR szColon[] = { ':',0 };
    static const WCHAR szbs[] = { '/', 0 };

    hUserItem = FUNC0( hdlg, IDC_USERNAME );
    hPassItem = FUNC0( hdlg, IDC_PASSWORD );

    /* now try fetch the username and password */
    FUNC6( szResource, szServer);
    FUNC5( szResource, szbs);
    FUNC5( szResource, szRealm);

    /*
     * WNetCachePassword is only concerned with the length
     * of the data stored (which we tell it) and it does
     * not use strlen() internally so we can add WCHAR data
     * instead of ASCII data and get it back the same way.
     */
    if( bSet )
    {
        szUserPass[0] = 0;
        FUNC1( hUserItem, szUserPass, 
                        (sizeof szUserPass-1)/sizeof(WCHAR) );
        FUNC5(szUserPass, szColon);
        u_len = FUNC8( szUserPass );
        FUNC1( hPassItem, szUserPass+u_len, 
                        (sizeof szUserPass)/sizeof(WCHAR)-u_len );

        r_len = (FUNC8( szResource ) + 1)*sizeof(WCHAR);
        u_len = (FUNC8( szUserPass ) + 1)*sizeof(WCHAR);
        r = FUNC3( (CHAR*)szResource, r_len,
                               (CHAR*)szUserPass, u_len, dwMagic, 0 );

        return ( r == WN_SUCCESS );
    }

    sz = sizeof szUserPass;
    r_len = (FUNC8( szResource ) + 1)*sizeof(WCHAR);
    r = FUNC4( (CHAR*)szResource, r_len,
                               (CHAR*)szUserPass, &sz, dwMagic );
    if( r != WN_SUCCESS )
        return FALSE;

    p = FUNC7( szUserPass, ':' );
    if( p )
    {
        *p = 0;
        FUNC2( hUserItem, szUserPass );
        FUNC2( hPassItem, p+1 );
    }

    return TRUE;
}