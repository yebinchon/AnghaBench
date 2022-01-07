
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwStructSize; char* lpszScheme; char* lpszHostName; int nPort; char* lpszUserName; char* lpszPassword; char* lpszUrlPath; char* lpszExtraInfo; void* dwExtraInfoLength; void* dwUrlPathLength; void* dwPasswordLength; void* dwUserNameLength; void* dwHostNameLength; int nScheme; void* dwSchemeLength; } ;
typedef TYPE_1__ URL_COMPONENTSA ;
typedef char CHAR ;


 int INTERNET_SCHEME_HTTP ;
 void* strlen (char*) ;

__attribute__((used)) static void fill_url_components(URL_COMPONENTSA *lpUrlComponents)
{
    static CHAR http[] = "http",
                winehq[] = "www.winehq.org",
                username[] = "username",
                password[] = "password",
                site_about[] = "/site/about",
                empty[] = "";

    lpUrlComponents->dwStructSize = sizeof(URL_COMPONENTSA);
    lpUrlComponents->lpszScheme = http;
    lpUrlComponents->dwSchemeLength = strlen(lpUrlComponents->lpszScheme);
    lpUrlComponents->nScheme = INTERNET_SCHEME_HTTP;
    lpUrlComponents->lpszHostName = winehq;
    lpUrlComponents->dwHostNameLength = strlen(lpUrlComponents->lpszHostName);
    lpUrlComponents->nPort = 80;
    lpUrlComponents->lpszUserName = username;
    lpUrlComponents->dwUserNameLength = strlen(lpUrlComponents->lpszUserName);
    lpUrlComponents->lpszPassword = password;
    lpUrlComponents->dwPasswordLength = strlen(lpUrlComponents->lpszPassword);
    lpUrlComponents->lpszUrlPath = site_about;
    lpUrlComponents->dwUrlPathLength = strlen(lpUrlComponents->lpszUrlPath);
    lpUrlComponents->lpszExtraInfo = empty;
    lpUrlComponents->dwExtraInfoLength = strlen(lpUrlComponents->lpszExtraInfo);
}
