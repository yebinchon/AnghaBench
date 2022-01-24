#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  size_t ULONG ;
struct TYPE_3__ {size_t HandleTableSize; int /*<<< orphan*/  HandleTableLock; int /*<<< orphan*/ * HandleTable; int /*<<< orphan*/ * ConsoleHandle; } ;
typedef  TYPE_1__* PCONSOLE_PROCESS_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static VOID
FUNC4(PCONSOLE_PROCESS_DATA ProcessData)
{
    FUNC2(&ProcessData->HandleTableLock);

    if (ProcessData->HandleTable != NULL)
    {
        ULONG i;

        /*
         * ProcessData->ConsoleHandle is NULL (and the assertion fails) when
         * ConSrvFreeHandlesTable is called in ConSrvConnect during the
         * allocation of a new console.
         */
        // ASSERT(ProcessData->ConsoleHandle);
        if (ProcessData->ConsoleHandle != NULL)
        {
            /* Close all the console handles */
            for (i = 0; i < ProcessData->HandleTableSize; i++)
            {
                FUNC0(&ProcessData->HandleTable[i]);
            }
        }
        /* Free the handles table memory */
        FUNC1(ProcessData->HandleTable);
        ProcessData->HandleTable = NULL;
    }

    ProcessData->HandleTableSize = 0;

    FUNC3(&ProcessData->HandleTableLock);
}