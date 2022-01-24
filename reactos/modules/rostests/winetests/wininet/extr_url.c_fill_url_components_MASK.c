#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int dwStructSize; char* lpszScheme; char* lpszHostName; int nPort; char* lpszUserName; char* lpszPassword; char* lpszUrlPath; char* lpszExtraInfo; void* dwExtraInfoLength; void* dwUrlPathLength; void* dwPasswordLength; void* dwUserNameLength; void* dwHostNameLength; int /*<<< orphan*/  nScheme; void* dwSchemeLength; } ;
typedef  TYPE_1__ URL_COMPONENTSA ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  INTERNET_SCHEME_HTTP ; 
 void* FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(URL_COMPONENTSA *lpUrlComponents)
{
    static CHAR http[]       = "http",
                winehq[]     = "www.winehq.org",
                username[]   = "username",
                password[]   = "password",
                site_about[] = "/site/about",
                empty[]      = "";

    lpUrlComponents->dwStructSize = sizeof(URL_COMPONENTSA);
    lpUrlComponents->lpszScheme = http;
    lpUrlComponents->dwSchemeLength = FUNC0(lpUrlComponents->lpszScheme);
    lpUrlComponents->nScheme = INTERNET_SCHEME_HTTP;
    lpUrlComponents->lpszHostName = winehq;
    lpUrlComponents->dwHostNameLength = FUNC0(lpUrlComponents->lpszHostName);
    lpUrlComponents->nPort = 80;
    lpUrlComponents->lpszUserName = username;
    lpUrlComponents->dwUserNameLength = FUNC0(lpUrlComponents->lpszUserName);
    lpUrlComponents->lpszPassword = password;
    lpUrlComponents->dwPasswordLength = FUNC0(lpUrlComponents->lpszPassword);
    lpUrlComponents->lpszUrlPath = site_about;
    lpUrlComponents->dwUrlPathLength = FUNC0(lpUrlComponents->lpszUrlPath);
    lpUrlComponents->lpszExtraInfo = empty;
    lpUrlComponents->dwExtraInfoLength = FUNC0(lpUrlComponents->lpszExtraInfo);
}