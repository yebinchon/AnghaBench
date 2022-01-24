#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uc ;
struct TYPE_5__ {int /*<<< orphan*/ * proxy; int /*<<< orphan*/ * proxyUsername; int /*<<< orphan*/ * proxyPassword; } ;
typedef  TYPE_1__ proxyinfo_t ;
typedef  char WCHAR ;
struct TYPE_6__ {int member_0; int dwHostNameLength; int dwUserNameLength; int dwPasswordLength; int /*<<< orphan*/  lpszPassword; int /*<<< orphan*/  lpszUserName; int /*<<< orphan*/  nPort; int /*<<< orphan*/  lpszHostName; } ;
typedef  TYPE_2__ URL_COMPONENTSW ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC6( proxyinfo_t *info, const WCHAR *url )
{
    static const WCHAR fmt[] = {'%','.','*','s',':','%','u',0};
    URL_COMPONENTSW uc = {sizeof(uc)};

    uc.dwHostNameLength = 1;
    uc.dwUserNameLength = 1;
    uc.dwPasswordLength = 1;

    if (!FUNC0( url, 0, 0, &uc )) return FALSE;
    if (!uc.dwHostNameLength)
    {
        if (!(info->proxy = FUNC3( url ))) return FALSE;
        info->proxyUsername = NULL;
        info->proxyPassword = NULL;
        return TRUE;
    }
    if (!(info->proxy = FUNC1( (uc.dwHostNameLength + 12) * sizeof(WCHAR) ))) return FALSE;
    FUNC5( info->proxy, fmt, uc.dwHostNameLength, uc.lpszHostName, uc.nPort );

    if (!uc.dwUserNameLength) info->proxyUsername = NULL;
    else if (!(info->proxyUsername = FUNC4( uc.lpszUserName, uc.dwUserNameLength )))
    {
        FUNC2( info->proxy );
        return FALSE;
    }
    if (!uc.dwPasswordLength) info->proxyPassword = NULL;
    else if (!(info->proxyPassword = FUNC4( uc.lpszPassword, uc.dwPasswordLength )))
    {
        FUNC2( info->proxyUsername );
        FUNC2( info->proxy );
        return FALSE;
    }
    return TRUE;
}