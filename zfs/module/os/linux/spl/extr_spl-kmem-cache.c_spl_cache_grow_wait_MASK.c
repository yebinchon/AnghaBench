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
struct TYPE_3__ {int /*<<< orphan*/  skc_flags; } ;
typedef  TYPE_1__ spl_kmem_cache_t ;

/* Variables and functions */
 int /*<<< orphan*/  KMC_BIT_GROWING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(spl_kmem_cache_t *skc)
{
	return (!FUNC0(KMC_BIT_GROWING, &skc->skc_flags));
}