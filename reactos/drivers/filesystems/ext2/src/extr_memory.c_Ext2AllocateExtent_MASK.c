#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  Ext2ExtLookasideList; } ;
typedef  int /*<<< orphan*/ * PEXT2_EXTENT ;
typedef  int /*<<< orphan*/  EXT2_EXTENT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* Ext2Global ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  PS_EXTENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

PEXT2_EXTENT
FUNC3 ()
{
    PEXT2_EXTENT Extent;

    Extent = (PEXT2_EXTENT)FUNC0(
                 &(Ext2Global->Ext2ExtLookasideList));
    if (!Extent) {
        return NULL;
    }

    FUNC2(Extent, sizeof(EXT2_EXTENT));
    FUNC1(PS_EXTENT, Extent, sizeof(EXT2_EXTENT));

    return Extent;
}