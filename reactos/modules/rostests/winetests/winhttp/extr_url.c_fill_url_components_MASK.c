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
struct TYPE_3__ {int dwStructSize; int nPort; int /*<<< orphan*/  lpszExtraInfo; void* dwExtraInfoLength; int /*<<< orphan*/  lpszUrlPath; void* dwUrlPathLength; int /*<<< orphan*/  lpszPassword; void* dwPasswordLength; int /*<<< orphan*/  lpszUserName; void* dwUserNameLength; int /*<<< orphan*/  lpszHostName; void* dwHostNameLength; int /*<<< orphan*/  nScheme; int /*<<< orphan*/  lpszScheme; void* dwSchemeLength; } ;
typedef  TYPE_1__ URL_COMPONENTS ;

/* Variables and functions */
 int /*<<< orphan*/  INTERNET_SCHEME_HTTP ; 
 int /*<<< orphan*/  about ; 
 int /*<<< orphan*/  http ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  password ; 
 int /*<<< orphan*/  query ; 
 int /*<<< orphan*/  username ; 
 int /*<<< orphan*/  winehq ; 

__attribute__((used)) static void FUNC1( URL_COMPONENTS *uc )
{
    uc->dwStructSize = sizeof(URL_COMPONENTS);
    uc->lpszScheme = http;
    uc->dwSchemeLength = FUNC0( uc->lpszScheme );
    uc->nScheme = INTERNET_SCHEME_HTTP;
    uc->lpszHostName = winehq;
    uc->dwHostNameLength = FUNC0( uc->lpszHostName );
    uc->nPort = 80;
    uc->lpszUserName = username;
    uc->dwUserNameLength = FUNC0( uc->lpszUserName );
    uc->lpszPassword = password;
    uc->dwPasswordLength = FUNC0( uc->lpszPassword );
    uc->lpszUrlPath = about;
    uc->dwUrlPathLength = FUNC0( uc->lpszUrlPath );
    uc->lpszExtraInfo = query;
    uc->dwExtraInfoLength = FUNC0( uc->lpszExtraInfo );
}