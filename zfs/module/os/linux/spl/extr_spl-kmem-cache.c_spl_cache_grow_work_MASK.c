#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  skc_flags; int /*<<< orphan*/  skc_ref; } ;
typedef  TYPE_1__ spl_kmem_cache_t ;
struct TYPE_6__ {int /*<<< orphan*/  ska_flags; TYPE_1__* ska_cache; } ;
typedef  TYPE_2__ spl_kmem_alloc_t ;

/* Variables and functions */
 int /*<<< orphan*/  KMC_BIT_GROWING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(void *data)
{
	spl_kmem_alloc_t *ska = (spl_kmem_alloc_t *)data;
	spl_kmem_cache_t *skc = ska->ska_cache;

	(void) FUNC0(skc, ska->ska_flags);

	FUNC1(&skc->skc_ref);
	FUNC5();
	FUNC2(KMC_BIT_GROWING, &skc->skc_flags);
	FUNC4();

	FUNC3(ska);
}