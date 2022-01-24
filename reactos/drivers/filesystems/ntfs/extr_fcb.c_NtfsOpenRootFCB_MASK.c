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
typedef  int /*<<< orphan*/  PNTFS_VCB ;
typedef  int /*<<< orphan*/ * PNTFS_FCB ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 

PNTFS_FCB
FUNC2(PNTFS_VCB Vcb)
{
    PNTFS_FCB Fcb;

    Fcb = FUNC0(Vcb, L"\\");
    if (Fcb == NULL)
    {
        Fcb = FUNC1(Vcb);
    }

    return Fcb;
}