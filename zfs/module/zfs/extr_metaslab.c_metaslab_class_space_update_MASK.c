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
struct TYPE_3__ {int /*<<< orphan*/  mc_dspace; int /*<<< orphan*/  mc_space; int /*<<< orphan*/  mc_deferred; int /*<<< orphan*/  mc_alloc; } ;
typedef  TYPE_1__ metaslab_class_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(metaslab_class_t *mc, int64_t alloc_delta,
    int64_t defer_delta, int64_t space_delta, int64_t dspace_delta)
{
	FUNC0(&mc->mc_alloc, alloc_delta);
	FUNC0(&mc->mc_deferred, defer_delta);
	FUNC0(&mc->mc_space, space_delta);
	FUNC0(&mc->mc_dspace, dspace_delta);
}