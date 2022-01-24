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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  SID_NAME_USE ;
typedef  int /*<<< orphan*/ * PSID ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  szUserSID ; 

__attribute__((used)) static UINT FUNC7( MSIPACKAGE *package )
{
    SID_NAME_USE use;
    LPWSTR user_name;
    LPWSTR sid_str = NULL, dom = NULL;
    DWORD size, dom_size;
    PSID psid = NULL;
    UINT r = ERROR_FUNCTION_FAILED;

    size = 0;
    FUNC1( NULL, &size );

    user_name = FUNC4( (size + 1) * sizeof(WCHAR) );
    if (!user_name)
        return ERROR_OUTOFMEMORY;

    if (!FUNC1( user_name, &size ))
        goto done;

    size = 0;
    dom_size = 0;
    FUNC3( NULL, user_name, NULL, &size, NULL, &dom_size, &use );

    psid = FUNC4( size );
    dom = FUNC4( dom_size*sizeof (WCHAR) );
    if (!psid || !dom)
    {
        r = ERROR_OUTOFMEMORY;
        goto done;
    }

    if (!FUNC3( NULL, user_name, psid, &size, dom, &dom_size, &use ))
        goto done;

    if (!FUNC0( psid, &sid_str ))
        goto done;

    r = FUNC6( package->db, szUserSID, sid_str, -1 );

done:
    FUNC2( sid_str );
    FUNC5( dom );
    FUNC5( psid );
    FUNC5( user_name );

    return r;
}