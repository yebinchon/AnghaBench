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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_FILE_INVALID ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7( void )
{
    HANDLE file, res, test;
    BOOL r;

    file = FUNC2(filename, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, 0, 0);
    FUNC5 (file != INVALID_HANDLE_VALUE, "failed to create file\n");

    FUNC1( file );

    res = FUNC0( filename, TRUE );
    if ( res != NULL || FUNC4() != ERROR_FILE_INVALID )
    {
        FUNC5( res != NULL, "BeginUpdateResource failed\n");

        /* check if it's possible to open the file now */
        test = FUNC2(filename, GENERIC_READ, 0, NULL, OPEN_EXISTING, 0, 0);
        FUNC5 (test != INVALID_HANDLE_VALUE, "failed to create file\n");

        FUNC1( test );

        r = FUNC3( res, FALSE );
        FUNC5( r == FALSE, "EndUpdateResource failed\n");
    }
    else
        FUNC6( "Can't update resource in empty file\n" );

    res = FUNC0( filename, FALSE );
    FUNC5( res == NULL, "BeginUpdateResource failed\n");
}