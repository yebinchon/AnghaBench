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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {char const* RemoteServerName; char const* LocalServer; char const* ServiceParameters; char const* DllSurrogate; scalar_t__ RunAsInteractiveUser; scalar_t__ ActivateAtStorage; int /*<<< orphan*/  AppID; } ;
typedef  TYPE_1__ MSIAPPID ;
typedef  char const* LPCWSTR ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  szAppID ; 

__attribute__((used)) static UINT FUNC3(const MSIAPPID *appid, LPCWSTR app )
{
    static const WCHAR szRemoteServerName[] =
         {'R','e','m','o','t','e','S','e','r','v','e','r','N','a','m','e',0};
    static const WCHAR szLocalService[] =
         {'L','o','c','a','l','S','e','r','v','i','c','e',0};
    static const WCHAR szService[] =
         {'S','e','r','v','i','c','e','P','a','r','a','m','e','t','e','r','s',0};
    static const WCHAR szDLL[] =
         {'D','l','l','S','u','r','r','o','g','a','t','e',0};
    static const WCHAR szActivate[] =
         {'A','c','t','i','v','a','t','e','A','s','S','t','o','r','a','g','e',0};
    static const WCHAR szY[] = {'Y',0};
    static const WCHAR szRunAs[] = {'R','u','n','A','s',0};
    static const WCHAR szUser[] = 
         {'I','n','t','e','r','a','c','t','i','v','e',' ','U','s','e','r',0};

    HKEY hkey2,hkey3;

    FUNC1(HKEY_CLASSES_ROOT,szAppID,&hkey2);
    FUNC1( hkey2, appid->AppID, &hkey3 );
    FUNC0(hkey2);
    FUNC2( hkey3, NULL, app );

    if (appid->RemoteServerName)
        FUNC2( hkey3, szRemoteServerName, appid->RemoteServerName );

    if (appid->LocalServer)
        FUNC2( hkey3, szLocalService, appid->LocalServer );

    if (appid->ServiceParameters)
        FUNC2( hkey3, szService, appid->ServiceParameters );

    if (appid->DllSurrogate)
        FUNC2( hkey3, szDLL, appid->DllSurrogate );

    if (appid->ActivateAtStorage)
        FUNC2( hkey3, szActivate, szY );

    if (appid->RunAsInteractiveUser)
        FUNC2( hkey3, szRunAs, szUser );

    FUNC0(hkey3);
    return ERROR_SUCCESS;
}