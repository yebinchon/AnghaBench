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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_3__ {int /*<<< orphan*/  as_upper_bound; } ;
typedef  TYPE_1__ aggsum_t ;

/* Variables and functions */

int64_t
FUNC0(aggsum_t *as)
{
	return (as->as_upper_bound);
}