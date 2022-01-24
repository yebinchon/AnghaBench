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
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  scalar_t__ HRSRC ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,void*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 

__attribute__((used)) static void FUNC10(int res_no, const char *filename)
{
    DWORD written;
    HANDLE file;
    HRSRC res;
    void *ptr;

    file = FUNC1( filename, GENERIC_READ|GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, 0, 0 );
    FUNC9( file != INVALID_HANDLE_VALUE, "file creation failed\n" );
    if (file == INVALID_HANDLE_VALUE) return;
    res = FUNC2( FUNC3(NULL), (LPCSTR)FUNC6(res_no), "TYPELIB" );
    FUNC9( res != 0, "couldn't find resource\n" );
    ptr = FUNC5( FUNC4( FUNC3(NULL), res ));
    FUNC8( file, ptr, FUNC7( FUNC3(NULL), res ), &written, NULL );
    FUNC9( written == FUNC7( FUNC3(NULL), res ), "couldn't write resource\n" );
    FUNC0( file );
}