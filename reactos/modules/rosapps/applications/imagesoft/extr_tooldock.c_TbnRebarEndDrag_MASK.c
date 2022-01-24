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
struct TYPE_3__ {int /*<<< orphan*/  uBand; } ;
typedef  int /*<<< orphan*/  PTOOLBAR_DOCKS ;
typedef  int /*<<< orphan*/ * PDOCKBAR_ITEM ;
typedef  TYPE_1__* LPNMREBAR ;
typedef  int /*<<< orphan*/  DOCK_POSITION ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID
FUNC1(PTOOLBAR_DOCKS TbDocks,
                DOCK_POSITION Position,
                LPNMREBAR lpnmrb)
{
    PDOCKBAR_ITEM Item;

    Item = FUNC0(TbDocks,
                                    Position,
                                    lpnmrb->uBand);

    if (Item != NULL)
    {
        /* Nothing to do */
    }
}