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
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_3__ {void* ks_private; } ;
typedef  TYPE_1__ kstat_t ;

/* Variables and functions */

__attribute__((used)) static void *
FUNC0(kstat_t *ksp, loff_t n)
{
	return (ksp->ks_private);	/* return the spa_t */
}