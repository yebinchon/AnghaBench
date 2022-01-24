#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  VS_FIXEDFILEINFO ;
typedef  int /*<<< orphan*/  UINT ;
typedef  void* LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char const*,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

VS_FIXEDFILEINFO *FUNC6( LPCWSTR filename )
{
    static const WCHAR name[] = {'\\',0};
    VS_FIXEDFILEINFO *ptr, *ret;
    LPVOID version;
    DWORD versize, handle;
    UINT sz;

    versize = FUNC0( filename, &handle );
    if (!versize)
        return NULL;

    version = FUNC4( versize );
    if (!version)
        return NULL;

    FUNC1( filename, 0, versize, version );

    if (!FUNC2( version, name, (LPVOID *)&ptr, &sz ))
    {
        FUNC5( version );
        return NULL;
    }

    ret = FUNC4( sz );
    FUNC3( ret, ptr, sz );

    FUNC5( version );
    return ret;
}