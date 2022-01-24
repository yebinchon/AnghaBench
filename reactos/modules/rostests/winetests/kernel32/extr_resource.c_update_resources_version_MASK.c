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
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int TRUE ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6( void )
{
    HANDLE res = NULL;
    BOOL r;
    char foo[] = "red and white";

    res = FUNC0( filename, TRUE );
    FUNC5( res != NULL, "BeginUpdateResource failed\n");

    if (0)  /* this causes subsequent tests to fail on Vista */
    {
        r = FUNC4( res,
                            FUNC3(0x1230),
                            FUNC3(0x4567),
                            0xabcd,
                            NULL, 0 );
        FUNC5( r == FALSE, "UpdateResource failed\n");
    }

    r = FUNC4( res,
                        FUNC3(0x1230),
                        FUNC3(0x4567),
                        0xabcd,
                        foo, sizeof foo );
    FUNC5( r == TRUE, "UpdateResource failed: %d\n", FUNC2());

    r = FUNC1( res, FALSE );
    FUNC5( r, "EndUpdateResource failed: %d\n", FUNC2());
}