#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_OUTOFMEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  szOriginalDatabase ; 
 int /*<<< orphan*/  szSOURCEDIR ; 
 int /*<<< orphan*/  szSourceDir ; 

UINT FUNC7(MSIPACKAGE *package, BOOL replace)
{
    WCHAR *source, *check, *p, *db;
    DWORD len;

    if (!(db = FUNC2( package->db, szOriginalDatabase )))
        return ERROR_OUTOFMEMORY;

    if (!(p = FUNC6( db, '\\' )) && !(p = FUNC6( db, '/' )))
    {
        FUNC3(db);
        return ERROR_SUCCESS;
    }
    len = p - db + 2;
    source = FUNC1( len * sizeof(WCHAR) );
    FUNC0( source, db, len );
    FUNC3( db );

    check = FUNC2( package->db, szSourceDir );
    if (!check || replace)
    {
        UINT r = FUNC5( package->db, szSourceDir, source, -1 );
        if (r == ERROR_SUCCESS)
            FUNC4( package, TRUE );
    }
    FUNC3( check );

    check = FUNC2( package->db, szSOURCEDIR );
    if (!check || replace)
        FUNC5( package->db, szSOURCEDIR, source, -1 );

    FUNC3( check );
    FUNC3( source );

    return ERROR_SUCCESS;
}