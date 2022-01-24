#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {scalar_t__ ub_magic; } ;
typedef  TYPE_1__ uberblock_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ UBERBLOCK_MAGIC ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

int
FUNC3(uberblock_t *ub)
{
	if (ub->ub_magic == FUNC0((uint64_t)UBERBLOCK_MAGIC))
		FUNC2(ub, sizeof (uberblock_t));

	if (ub->ub_magic != UBERBLOCK_MAGIC)
		return (FUNC1(EINVAL));

	return (0);
}