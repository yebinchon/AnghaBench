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
typedef  int /*<<< orphan*/  PLARGE_MCB ;
typedef  scalar_t__ LONGLONG ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DL_EXT ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN
FUNC3(PLARGE_MCB  Extents)
{
    if (FUNC2(Extents) != 0) {

        LONGLONG            DirtyVba;
        LONGLONG            DirtyLba;
        LONGLONG            DirtyLength;
        int                 i, n = 0;

        for (i = 0; FUNC1(
                    Extents, i, &DirtyVba,
                    &DirtyLba, &DirtyLength); i++)  {
            if (DirtyVba > 0 && DirtyLba != -1) {
                FUNC0(DL_EXT, ("Vba:%I64xh Lba:%I64xh Len:%I64xh.\n", DirtyVba, DirtyLba, DirtyLength));
                n++;
            }
        }

        return n ? TRUE : FALSE;
    }

    return FALSE;
}