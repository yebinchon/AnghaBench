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
struct TYPE_3__ {int /*<<< orphan*/  ExclusiveWaiter; int /*<<< orphan*/  Exclusive; int /*<<< orphan*/  SectionObject; int /*<<< orphan*/  ExclusiveWait; } ;
typedef  TYPE_1__* PNOCC_BCB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CcCacheBitmap ; 
 TYPE_1__* CcCacheSections ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  Executive ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KernelMode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  TRUE ; 

VOID
FUNC5(ULONG Start)
{
    PNOCC_BCB Bcb = &CcCacheSections[Start];

    FUNC3(&Bcb->ExclusiveWait,
                          Executive,
                          KernelMode,
                          FALSE,
                          NULL);

    FUNC1();
    FUNC0(Bcb->ExclusiveWaiter);
    FUNC0(Bcb->SectionObject);
    Bcb->Exclusive = TRUE;
    Bcb->ExclusiveWaiter--;
    FUNC4(CcCacheBitmap, Start);
    FUNC2();
}