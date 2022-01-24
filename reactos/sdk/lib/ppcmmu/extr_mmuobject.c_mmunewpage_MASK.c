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
typedef  int /*<<< orphan*/  ppc_map_t ;
typedef  int /*<<< orphan*/  paddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PpcPageTable ; 
 int /*<<< orphan*/ * FUNC1 () ; 

paddr_t FUNC2()
{
    ppc_map_t *PagePtr = FUNC1();
    if (!PagePtr) return 0;
    return FUNC0(PagePtr - PpcPageTable);
}