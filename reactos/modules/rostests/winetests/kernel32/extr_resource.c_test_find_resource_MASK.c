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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ HRSRC ;

/* Variables and functions */
 scalar_t__ ERROR_RESOURCE_LANG_NOT_FOUND ; 
 scalar_t__ ERROR_RESOURCE_NAME_NOT_FOUND ; 
 scalar_t__ ERROR_RESOURCE_TYPE_NOT_FOUND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LANG_ENGLISH ; 
 int /*<<< orphan*/  LANG_FRENCH ; 
 int /*<<< orphan*/  LANG_GERMAN ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ RT_DIALOG ; 
 scalar_t__ RT_MENU ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int /*<<< orphan*/  SUBLANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(void)
{
    HRSRC rsrc;

    rsrc = FUNC1( FUNC3(NULL), FUNC4(1), (LPCWSTR)RT_MENU );
    FUNC7( rsrc != 0, "resource not found\n" );
    rsrc = FUNC0( FUNC3(NULL), (LPCWSTR)RT_MENU, FUNC4(1),
                            FUNC5( LANG_NEUTRAL, SUBLANG_NEUTRAL ));
    FUNC7( rsrc != 0, "resource not found\n" );
    rsrc = FUNC0( FUNC3(NULL), (LPCWSTR)RT_MENU, FUNC4(1),
                            FUNC5( LANG_GERMAN, SUBLANG_DEFAULT ));
    FUNC7( rsrc != 0, "resource not found\n" );

    FUNC6( 0xdeadbeef );
    rsrc = FUNC1( FUNC3(NULL), FUNC4(1), (LPCWSTR)RT_DIALOG );
    FUNC7( !rsrc, "resource found\n" );
    FUNC7( FUNC2() == ERROR_RESOURCE_TYPE_NOT_FOUND, "wrong error %u\n", FUNC2() );

    FUNC6( 0xdeadbeef );
    rsrc = FUNC1( FUNC3(NULL), FUNC4(2), (LPCWSTR)RT_MENU );
    FUNC7( !rsrc, "resource found\n" );
    FUNC7( FUNC2() == ERROR_RESOURCE_NAME_NOT_FOUND, "wrong error %u\n", FUNC2() );

    FUNC6( 0xdeadbeef );
    rsrc = FUNC0( FUNC3(NULL), (LPCWSTR)RT_MENU, FUNC4(1),
                            FUNC5( LANG_ENGLISH, SUBLANG_DEFAULT ) );
    FUNC7( !rsrc, "resource found\n" );
    FUNC7( FUNC2() == ERROR_RESOURCE_LANG_NOT_FOUND, "wrong error %u\n", FUNC2() );

    FUNC6( 0xdeadbeef );
    rsrc = FUNC0( FUNC3(NULL), (LPCWSTR)RT_MENU, FUNC4(1),
                            FUNC5( LANG_FRENCH, SUBLANG_DEFAULT ) );
    FUNC7( !rsrc, "resource found\n" );
    FUNC7( FUNC2() == ERROR_RESOURCE_LANG_NOT_FOUND, "wrong error %u\n", FUNC2() );
}