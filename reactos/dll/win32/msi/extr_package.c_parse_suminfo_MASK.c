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
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int num_langids; int /*<<< orphan*/ * langids; void* platform; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  MSISUMMARYINFO ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  int /*<<< orphan*/  LANGID ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INSTALL_PLATFORM_UNSUPPORTED ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  ERROR_PATCH_PACKAGE_INVALID ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  PID_PAGECOUNT ; 
 int /*<<< orphan*/  PID_TEMPLATE ; 
 void* PLATFORM_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 scalar_t__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC8 (scalar_t__*) ; 
 scalar_t__* FUNC9 (scalar_t__*,char) ; 

__attribute__((used)) static UINT FUNC10( MSISUMMARYINFO *si, MSIPACKAGE *package )
{
    WCHAR *template, *p, *q, *platform;
    DWORD i, count;

    package->version = FUNC7( si, PID_PAGECOUNT );
    FUNC0("version: %d\n", package->version);

    template = FUNC6( si, PID_TEMPLATE );
    if (!template)
        return ERROR_SUCCESS; /* native accepts missing template property */

    FUNC0("template: %s\n", FUNC3(template));

    p = FUNC9( template, ';' );
    if (!p)
    {
        FUNC1("invalid template string %s\n", FUNC3(template));
        FUNC5( template );
        return ERROR_PATCH_PACKAGE_INVALID;
    }
    *p = 0;
    platform = template;
    if ((q = FUNC9( platform, ',' ))) *q = 0;
    package->platform = FUNC8( platform );
    while (package->platform == PLATFORM_UNKNOWN && q)
    {
        platform = q + 1;
        if ((q = FUNC9( platform, ',' ))) *q = 0;
        package->platform = FUNC8( platform );
    }
    if (package->platform == PLATFORM_UNKNOWN)
    {
        FUNC1("unknown platform %s\n", FUNC3(template));
        FUNC5( template );
        return ERROR_INSTALL_PLATFORM_UNSUPPORTED;
    }
    p++;
    if (!*p)
    {
        FUNC5( template );
        return ERROR_SUCCESS;
    }
    count = 1;
    for (q = p; (q = FUNC9( q, ',' )); q++) count++;

    package->langids = FUNC4( count * sizeof(LANGID) );
    if (!package->langids)
    {
        FUNC5( template );
        return ERROR_OUTOFMEMORY;
    }

    i = 0;
    while (*p)
    {
        q = FUNC9( p, ',' );
        if (q) *q = 0;
        package->langids[i] = FUNC2( p );
        if (!q) break;
        p = q + 1;
        i++;
    }
    package->num_langids = i + 1;

    FUNC5( template );
    return ERROR_SUCCESS;
}