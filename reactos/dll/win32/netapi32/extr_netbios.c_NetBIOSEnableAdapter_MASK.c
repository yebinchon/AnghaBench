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
typedef  size_t UCHAR ;
struct TYPE_4__ {size_t tableSize; int /*<<< orphan*/  cs; TYPE_1__* table; } ;
struct TYPE_3__ {scalar_t__ transport; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__ gNBTable ; 

void FUNC3(UCHAR lana)
{
    FUNC2(": %d\n", lana);
    if (lana < gNBTable.tableSize)
    {
        FUNC0(&gNBTable.cs);
        if (gNBTable.table[lana].transport != 0)
            gNBTable.table[lana].enabled = TRUE;
        FUNC1(&gNBTable.cs);
    }
}