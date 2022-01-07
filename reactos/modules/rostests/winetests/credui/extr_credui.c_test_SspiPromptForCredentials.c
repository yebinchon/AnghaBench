
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int info ;
typedef char WCHAR ;
typedef scalar_t__ ULONG ;
struct TYPE_3__ {int cbSize; char const* pszMessageText; char const* pszCaptionText; int * hbmBanner; int * hwndParent; } ;
typedef int SECURITY_STATUS ;
typedef int * PSEC_WINNT_AUTH_IDENTITY_OPAQUE ;
typedef TYPE_1__ CREDUI_INFOW ;


 scalar_t__ ERROR_CANCELLED ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NO_SUCH_PACKAGE ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int SEC_E_OK ;
 int TRUE ;
 int ok (int,char*,...) ;
 int pSspiEncodeAuthIdentityAsStrings (int *,char const**,char const**,char const**) ;
 int pSspiFreeAuthIdentity (int *) ;
 scalar_t__ pSspiPromptForCredentialsW (char const*,TYPE_1__*,int ,char const*,int *,int **,int*,int ) ;
 int win_skip (char*) ;
 scalar_t__ winetest_interactive ;

__attribute__((used)) static void test_SspiPromptForCredentials(void)
{
    static const WCHAR targetW[] = {'S','s','p','i','T','e','s','t',0};
    static const WCHAR basicW[] = {'b','a','s','i','c',0};
    ULONG ret;
    SECURITY_STATUS status;
    CREDUI_INFOW info;
    PSEC_WINNT_AUTH_IDENTITY_OPAQUE id;
    const WCHAR *username, *domain, *creds;
    int save;

    if (!pSspiPromptForCredentialsW || !pSspiFreeAuthIdentity)
    {
        win_skip( "SspiPromptForCredentialsW is missing\n" );
        return;
    }

    info.cbSize = sizeof(info);
    info.hwndParent = ((void*)0);
    info.pszMessageText = targetW;
    info.pszCaptionText = basicW;
    info.hbmBanner = ((void*)0);
    ret = pSspiPromptForCredentialsW( ((void*)0), &info, 0, basicW, ((void*)0), &id, &save, 0 );
    ok( ret == ERROR_INVALID_PARAMETER, "got %u\n", ret );

    ret = pSspiPromptForCredentialsW( targetW, &info, 0, ((void*)0), ((void*)0), &id, &save, 0 );
    ok( ret == ERROR_NO_SUCH_PACKAGE, "got %u\n", ret );

    if (winetest_interactive)
    {
        id = ((void*)0);
        save = -1;
        ret = pSspiPromptForCredentialsW( targetW, &info, 0, basicW, ((void*)0), &id, &save, 0 );
        ok( ret == ERROR_SUCCESS || ret == ERROR_CANCELLED, "got %u\n", ret );
        if (ret == ERROR_SUCCESS)
        {
            ok( id != ((void*)0), "id not set\n" );
            ok( save == TRUE || save == FALSE, "got %d\n", save );

            username = creds = ((void*)0);
            domain = (const WCHAR *)0xdeadbeef;
            status = pSspiEncodeAuthIdentityAsStrings( id, &username, &domain, &creds );
            ok( status == SEC_E_OK, "got %u\n", status );
            ok( username != ((void*)0), "username not set\n" );
            ok( domain == ((void*)0), "domain not set\n" );
            ok( creds != ((void*)0), "creds not set\n" );
            pSspiFreeAuthIdentity( id );
        }
    }
}
