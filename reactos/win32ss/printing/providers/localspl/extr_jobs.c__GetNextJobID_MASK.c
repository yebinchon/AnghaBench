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
typedef  scalar_t__* PDWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GlobalJobList ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ _dwLastJobID ; 

__attribute__((used)) static BOOL
FUNC3(PDWORD dwJobID)
{
    ++_dwLastJobID;

    while (FUNC2(&GlobalJobList, &_dwLastJobID, NULL))
    {
        // This ID is already taken. Try the next one.
        ++_dwLastJobID;
    }

    if (!FUNC1(_dwLastJobID))
    {
        FUNC0("Job ID %lu isn't valid!\n", _dwLastJobID);
        return FALSE;
    }

    *dwJobID = _dwLastJobID;
    return TRUE;
}