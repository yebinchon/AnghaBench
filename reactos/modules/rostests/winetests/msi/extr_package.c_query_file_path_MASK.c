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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  MSIHANDLE ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

__attribute__((used)) static void FUNC5(MSIHANDLE hpkg, LPCSTR file, LPSTR buff)
{
    UINT r;
    DWORD size;
    MSIHANDLE rec;

    rec = FUNC1( 1 );
    FUNC4(rec, "MsiCreate record failed\n");

    r = FUNC3( rec, 0, file );
    FUNC4( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r );

    size = MAX_PATH;
    r = FUNC2( hpkg, rec, buff, &size );
    FUNC4( r == ERROR_SUCCESS, "Expected ERROR_SUCCESS, got %u\n", r );

    FUNC0( rec );
}