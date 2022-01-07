
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef char WCHAR ;
typedef int UINT ;
typedef char* LPWSTR ;
typedef char const* LPCWSTR ;
typedef int HWND ;
typedef scalar_t__ DWORD ;
typedef int CHAR ;
typedef int BOOL ;


 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int GetWindowTextW (int ,char*,int) ;
 int IDC_PASSWORD ;
 int IDC_USERNAME ;
 int SetWindowTextW (int ,char*) ;
 int TRUE ;
 scalar_t__ WN_SUCCESS ;
 scalar_t__ WNetCachePassword (int *,int,int *,int,scalar_t__,int ) ;
 scalar_t__ WNetGetCachedPassword (int *,int,int *,int*,scalar_t__) ;
 int lstrcatW (char*,char const*) ;
 int lstrcpyW (char*,char const*) ;
 char* strchrW (char*,char) ;
 int strlenW (char*) ;

__attribute__((used)) static BOOL WININET_GetSetPassword( HWND hdlg, LPCWSTR szServer,
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

    hUserItem = GetDlgItem( hdlg, IDC_USERNAME );
    hPassItem = GetDlgItem( hdlg, IDC_PASSWORD );


    lstrcpyW( szResource, szServer);
    lstrcatW( szResource, szbs);
    lstrcatW( szResource, szRealm);







    if( bSet )
    {
        szUserPass[0] = 0;
        GetWindowTextW( hUserItem, szUserPass,
                        (sizeof szUserPass-1)/sizeof(WCHAR) );
        lstrcatW(szUserPass, szColon);
        u_len = strlenW( szUserPass );
        GetWindowTextW( hPassItem, szUserPass+u_len,
                        (sizeof szUserPass)/sizeof(WCHAR)-u_len );

        r_len = (strlenW( szResource ) + 1)*sizeof(WCHAR);
        u_len = (strlenW( szUserPass ) + 1)*sizeof(WCHAR);
        r = WNetCachePassword( (CHAR*)szResource, r_len,
                               (CHAR*)szUserPass, u_len, dwMagic, 0 );

        return ( r == WN_SUCCESS );
    }

    sz = sizeof szUserPass;
    r_len = (strlenW( szResource ) + 1)*sizeof(WCHAR);
    r = WNetGetCachedPassword( (CHAR*)szResource, r_len,
                               (CHAR*)szUserPass, &sz, dwMagic );
    if( r != WN_SUCCESS )
        return FALSE;

    p = strchrW( szUserPass, ':' );
    if( p )
    {
        *p = 0;
        SetWindowTextW( hUserItem, szUserPass );
        SetWindowTextW( hPassItem, p+1 );
    }

    return TRUE;
}
