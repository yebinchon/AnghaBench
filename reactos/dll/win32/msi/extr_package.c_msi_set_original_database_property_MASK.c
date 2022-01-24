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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {char* path; } ;
typedef  TYPE_1__ MSIDATABASE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int FUNC0 (char const*,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  URLIS_URL ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  szOriginalDatabase ; 

UINT FUNC6( MSIDATABASE *db, const WCHAR *package )
{
    UINT r;

    if (FUNC2( package, URLIS_URL ))
        r = FUNC5( db, szOriginalDatabase, package, -1 );
    else if (package[0] == '#')
        r = FUNC5( db, szOriginalDatabase, db->path, -1 );
    else
    {
        DWORD len;
        WCHAR *path;

        if (!(len = FUNC0( package, 0, NULL, NULL ))) return FUNC1();
        if (!(path = FUNC3( len * sizeof(WCHAR) ))) return ERROR_OUTOFMEMORY;
        len = FUNC0( package, len, path, NULL );
        r = FUNC5( db, szOriginalDatabase, path, len );
        FUNC4( path );
    }
    return r;
}