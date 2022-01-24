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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dsl_dir_t ;
struct TYPE_2__ {int /*<<< orphan*/ * dd_used_breakdown; } ;

/* Variables and functions */
 size_t DD_USED_SNAP ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 

uint64_t
FUNC1(dsl_dir_t *dd)
{
	return (FUNC0(dd)->dd_used_breakdown[DD_USED_SNAP]);
}