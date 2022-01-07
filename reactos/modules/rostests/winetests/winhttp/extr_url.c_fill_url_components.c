
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwStructSize; int nPort; int lpszExtraInfo; void* dwExtraInfoLength; int lpszUrlPath; void* dwUrlPathLength; int lpszPassword; void* dwPasswordLength; int lpszUserName; void* dwUserNameLength; int lpszHostName; void* dwHostNameLength; int nScheme; int lpszScheme; void* dwSchemeLength; } ;
typedef TYPE_1__ URL_COMPONENTS ;


 int INTERNET_SCHEME_HTTP ;
 int about ;
 int http ;
 void* lstrlenW (int ) ;
 int password ;
 int query ;
 int username ;
 int winehq ;

__attribute__((used)) static void fill_url_components( URL_COMPONENTS *uc )
{
    uc->dwStructSize = sizeof(URL_COMPONENTS);
    uc->lpszScheme = http;
    uc->dwSchemeLength = lstrlenW( uc->lpszScheme );
    uc->nScheme = INTERNET_SCHEME_HTTP;
    uc->lpszHostName = winehq;
    uc->dwHostNameLength = lstrlenW( uc->lpszHostName );
    uc->nPort = 80;
    uc->lpszUserName = username;
    uc->dwUserNameLength = lstrlenW( uc->lpszUserName );
    uc->lpszPassword = password;
    uc->dwPasswordLength = lstrlenW( uc->lpszPassword );
    uc->lpszUrlPath = about;
    uc->dwUrlPathLength = lstrlenW( uc->lpszUrlPath );
    uc->lpszExtraInfo = query;
    uc->dwExtraInfoLength = lstrlenW( uc->lpszExtraInfo );
}
