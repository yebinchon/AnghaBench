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

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_PATH_NOT_FOUND ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

__attribute__((used)) static void FUNC4(void)
{
    FUNC2(0);
    FUNC3( !FUNC1( "\\some_dummy_dir" ), "SetCurrentDirectoryA succeeded\n" );
    FUNC3( FUNC0() == ERROR_FILE_NOT_FOUND, "wrong error %d\n", FUNC0() );
    FUNC3( !FUNC1( "\\some_dummy\\subdir" ), "SetCurrentDirectoryA succeeded\n" );
    FUNC3( FUNC0() == ERROR_PATH_NOT_FOUND, "wrong error %d\n", FUNC0() );
}