#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* DebugInfo; } ;
struct handle_table {TYPE_2__ mutex; int /*<<< orphan*/  paEntries; } ;
struct TYPE_3__ {scalar_t__* Spare; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct handle_table*) ; 

void FUNC4(struct handle_table *lpTable)
{
    FUNC3("(lpTable=%p)\n", lpTable);
        
    FUNC2(FUNC1(), 0, lpTable->paEntries);
    lpTable->mutex.DebugInfo->Spare[0] = 0;
    FUNC0(&lpTable->mutex);
}