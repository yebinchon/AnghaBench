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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ FALSE ; 
 int FILE_ATTRIBUTE_NORMAL ; 
 int FILE_FLAG_DELETE_ON_CLOSE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ TRUE ; 
 scalar_t__ WAIT_FAILED ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ WAIT_TIMEOUT ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    DWORD r;
    HANDLE event[2], semaphore[2], file;
    int i;

    /* invalid parameters */
    r = FUNC7(NULL, NULL, 0, 0);
    FUNC9( r == WAIT_FAILED, "should fail\n");

    event[0] = FUNC1(NULL, 0, 0, NULL);
    event[1] = FUNC1(NULL, 1, 1, NULL);

    FUNC9( event[0] && event[1], "failed to create event flags\n");

    r = FUNC7(event[0], NULL, 0, FALSE);
    FUNC9( r == WAIT_FAILED, "should fail\n");

    r = FUNC7(NULL, event[0], 0, FALSE);
    FUNC9( r == WAIT_FAILED, "should fail\n");


    /* valid parameters */
    r = FUNC7(event[0], event[1], 0, FALSE);
    FUNC9( r == WAIT_OBJECT_0, "should succeed\n");

    /* event[0] is now signalled - we repeat this test multiple times
     * to ensure that the wineserver handles this situation properly. */
    for (i = 0; i < 10000; i++)
    {
        r = FUNC7(event[0], event[0], 0, FALSE);
        FUNC9(r == WAIT_OBJECT_0, "should succeed\n");
    }

    /* event[0] is not signalled */
    r = FUNC8(event[0], 0);
    FUNC9( r == WAIT_TIMEOUT, "event was signalled\n");

    r = FUNC7(event[0], event[0], 0, FALSE);
    FUNC9( r == WAIT_OBJECT_0, "should succeed\n");

    /* clear event[1] and check for a timeout */
    FUNC9(FUNC6(event[1]), "failed to clear event[1]\n");
    r = FUNC7(event[0], event[1], 0, FALSE);
    FUNC9( r == WAIT_TIMEOUT, "should timeout\n");

    FUNC0(event[0]);
    FUNC0(event[1]);

    /* semaphores */
    semaphore[0] = FUNC3( NULL, 0, 1, NULL );
    semaphore[1] = FUNC3( NULL, 1, 1, NULL );
    FUNC9( semaphore[0] && semaphore[1], "failed to create semaphore\n");

    r = FUNC7(semaphore[0], semaphore[1], 0, FALSE);
    FUNC9( r == WAIT_OBJECT_0, "should succeed\n");

    r = FUNC7(semaphore[0], semaphore[1], 0, FALSE);
    FUNC9( r == WAIT_FAILED, "should fail\n");

    r = FUNC5(semaphore[0],1,NULL);
    FUNC9( r == FALSE, "should fail\n");

    r = FUNC5(semaphore[1],1,NULL);
    FUNC9( r == TRUE, "should succeed\n");

    FUNC0(semaphore[0]);
    FUNC0(semaphore[1]);

    /* try a registry key */
    file = FUNC2("x", GENERIC_READ|GENERIC_WRITE, 0, NULL, CREATE_ALWAYS,
        FILE_ATTRIBUTE_NORMAL | FILE_FLAG_DELETE_ON_CLOSE, NULL);
    r = FUNC7(file, file, 0, FALSE);
    FUNC9( r == WAIT_FAILED, "should fail\n");
    FUNC9( ERROR_INVALID_HANDLE == FUNC4(), "should return invalid handle error\n");
    FUNC0(file);
}