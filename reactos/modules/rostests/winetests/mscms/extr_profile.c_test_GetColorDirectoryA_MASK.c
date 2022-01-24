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
typedef  int /*<<< orphan*/  buffer ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int*) ; 

__attribute__((used)) static void FUNC3(void)
{
    BOOL ret;
    DWORD size;
    char buffer[MAX_PATH];

    /* Parameter checks */

    ret = FUNC2( NULL, NULL, NULL );
    FUNC1( !ret, "GetColorDirectoryA() succeeded (%d)\n", FUNC0() );

    size = 0;

    ret = FUNC2( NULL, NULL, &size );
    FUNC1( !ret && size > 0, "GetColorDirectoryA() succeeded (%d)\n", FUNC0() );

    size = 0;

    ret = FUNC2( NULL, buffer, &size );
    FUNC1( !ret && size > 0, "GetColorDirectoryA() succeeded (%d)\n", FUNC0() );

    size = 1;

    ret = FUNC2( NULL, buffer, &size );
    FUNC1( !ret && size > 0, "GetColorDirectoryA() succeeded (%d)\n", FUNC0() );

    /* Functional checks */

    size = sizeof(buffer);

    ret = FUNC2( NULL, buffer, &size );
    FUNC1( ret && size > 0, "GetColorDirectoryA() failed (%d)\n", FUNC0() );
}