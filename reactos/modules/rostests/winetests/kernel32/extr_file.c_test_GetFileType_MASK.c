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
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FILE_TYPE_CHAR ; 
 scalar_t__ FILE_TYPE_DISK ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 scalar_t__ STD_OUTPUT_HANDLE ; 
 char* filename ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
    DWORD type, type2;
    HANDLE h = FUNC1( filename, GENERIC_READ|GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, 0, 0 );
    FUNC5( h != INVALID_HANDLE_VALUE, "open %s failed\n", filename );
    type = FUNC3(h);
    FUNC5( type == FILE_TYPE_DISK, "expected type disk got %d\n", type );
    FUNC0( h );
    h = FUNC1( "nul", GENERIC_READ|GENERIC_WRITE, 0, NULL, OPEN_EXISTING, 0, 0 );
    FUNC5( h != INVALID_HANDLE_VALUE, "open nul failed\n" );
    type = FUNC3(h);
    FUNC5( type == FILE_TYPE_CHAR, "expected type char for nul got %d\n", type );
    FUNC0( h );
    FUNC2( filename );
    h = FUNC4( STD_OUTPUT_HANDLE );
    FUNC5( h != INVALID_HANDLE_VALUE, "GetStdHandle failed\n" );
    type = FUNC3( (HANDLE)STD_OUTPUT_HANDLE );
    type2 = FUNC3( h );
    FUNC5(type == type2, "expected type %d for STD_OUTPUT_HANDLE got %d\n", type2, type);
}