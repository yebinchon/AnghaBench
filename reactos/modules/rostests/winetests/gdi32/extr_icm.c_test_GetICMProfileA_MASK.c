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
typedef  int /*<<< orphan*/ * HDC ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__*,char*) ; 
 scalar_t__ FUNC1 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6( HDC dc )
{
    BOOL ret;
    DWORD size, error;
    char filename[MAX_PATH];

    FUNC2( 0xdeadbeef );
    ret = FUNC0( NULL, NULL, NULL );
    if ( !ret && ( FUNC1() == ERROR_CALL_NOT_IMPLEMENTED ) )
    {
        FUNC5( "GetICMProfileA is not implemented\n" );
        return;
    }
    FUNC3( !ret, "GetICMProfileA succeeded\n" );

    ret = FUNC0( dc, NULL, NULL );
    FUNC3( !ret, "GetICMProfileA succeeded\n" );

    size = MAX_PATH;
    ret = FUNC0( dc, &size, NULL );
    FUNC3( !ret, "GetICMProfileA succeeded\n" );
    FUNC3( size > 0, "got %u\n", size );

    size = 0;
    ret = FUNC0( dc, &size, NULL );
    FUNC3( !ret, "GetICMProfileA succeeded\n" );
    FUNC3( size > 0, "got %u\n", size );

    size = MAX_PATH;
    ret = FUNC0( NULL, &size, filename );
    FUNC3( !ret, "GetICMProfileA succeeded\n" );

    size = 0;
    filename[0] = 0;
    FUNC2(0xdeadbeef);
    ret = FUNC0( dc, &size, filename );
    error = FUNC1();
    FUNC3( !ret, "GetICMProfileA succeeded\n" );
    FUNC3( size, "expected size > 0\n" );
    FUNC3( filename[0] == 0, "Expected filename to be empty\n" );
    FUNC3( error == ERROR_INSUFFICIENT_BUFFER, "got %d, expected ERROR_INSUFFICIENT_BUFFER\n", error );

    ret = FUNC0( dc, NULL, filename );
    FUNC3( !ret, "GetICMProfileA succeeded\n" );

    size = MAX_PATH;
    ret = FUNC0( dc, &size, filename );
    FUNC3( ret, "GetICMProfileA failed %d\n", FUNC1() );

    FUNC4( "%s\n", filename );
}