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
typedef  int /*<<< orphan*/  WIN32_FIND_DATAA ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int ERROR_NO_MORE_FILES ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ TRUE ; 
 char FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    HANDLE handle;
    WIN32_FIND_DATAA search_results;
    int err;
    char buffer[5] = "C:\\*";

    buffer[0] = FUNC4();
    handle = FUNC1(buffer,&search_results);
    FUNC5 ( handle != INVALID_HANDLE_VALUE, "FindFirstFile on C:\\* should succeed\n" );
    while (FUNC2(handle, &search_results))
    {
        /* get to the end of the files */
    }
    FUNC5 ( FUNC0(handle) == TRUE, "Failed to close handle\n");
    err = FUNC3();
    FUNC5 ( err == ERROR_NO_MORE_FILES, "GetLastError should return ERROR_NO_MORE_FILES\n");
}