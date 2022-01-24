#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WORD ;
typedef  int /*<<< orphan*/  WINE_MMIO ;
typedef  scalar_t__ ULONG_PTR ;
struct TYPE_6__ {scalar_t__ hmmio; } ;
struct TYPE_7__ {struct TYPE_7__* lpNext; TYPE_1__ info; } ;
typedef  TYPE_2__* LPWINE_MMIO ;
typedef  scalar_t__ HMMIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* MMIOList ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  WINMM_cs ; 

__attribute__((used)) static	LPWINE_MMIO		FUNC5(void)
{
    static	WORD	MMIO_counter = 0;
    LPWINE_MMIO		wm;

    wm = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(WINE_MMIO));
    if (wm) {
	FUNC0(&WINMM_cs);
        /* lookup next unallocated WORD handle, with a non NULL value */
	while (++MMIO_counter == 0 || FUNC4((HMMIO)(ULONG_PTR)MMIO_counter));
	wm->info.hmmio = (HMMIO)(ULONG_PTR)MMIO_counter;
	wm->lpNext = MMIOList;
	MMIOList = wm;
	FUNC3(&WINMM_cs);
    }
    return wm;
}