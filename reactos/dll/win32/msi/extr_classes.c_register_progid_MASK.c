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
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_6__ {int /*<<< orphan*/  ProgID; TYPE_1__* CurVer; scalar_t__ IconPath; int /*<<< orphan*/  Description; } ;
struct TYPE_5__ {scalar_t__ ProgID; } ;
typedef  TYPE_2__ MSIPROGID ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char const* szCLSID ; 
 char const* szDefaultIcon ; 

__attribute__((used)) static UINT FUNC8( const MSIPROGID* progid )
{
    static const WCHAR szCurVer[] = {'C','u','r','V','e','r',0};
    HKEY hkey = 0;
    UINT rc;

    rc = FUNC2( HKEY_CLASSES_ROOT, progid->ProgID, &hkey );
    if (rc == ERROR_SUCCESS)
    {
        LPCWSTR clsid = FUNC5( progid );

        if (clsid)
            FUNC6( hkey, szCLSID, NULL, clsid );
        else
            FUNC3("%s has no class\n", FUNC4( progid->ProgID ) );

        if (progid->Description)
            FUNC7( hkey, NULL, progid->Description );

        if (progid->IconPath)
            FUNC6( hkey, szDefaultIcon, NULL, progid->IconPath );

        /* write out the current version */
        if (progid->CurVer)
            FUNC6( hkey, szCurVer, NULL, progid->CurVer->ProgID );

        FUNC1(hkey);
    }
    else
        FUNC0("failed to create key %s\n", FUNC4( progid->ProgID ) );

    return rc;
}