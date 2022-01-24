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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  PCONNECTION_ENDPOINT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_FILE_CLOSED ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 

VOID
FUNC7(PCONNECTION_ENDPOINT Connection, NTSTATUS Status)
{    
    FUNC6(Connection);
    
    // flush receive queue
    FUNC3(Connection, Status, TRUE);

    /* We completed the reads successfully but we need to return failure now */
    if (Status == STATUS_SUCCESS)
    {
        Status = STATUS_FILE_CLOSED;
    }
    
    // flush listen queue
    FUNC2(Connection, Status);
    
    // flush send queue
    FUNC4(Connection, Status, TRUE);
    
    // flush connect queue
    FUNC1(Connection, Status);

    // flush shutdown queue
    FUNC5(Connection, Status, TRUE);
    
    FUNC0(Connection);
}