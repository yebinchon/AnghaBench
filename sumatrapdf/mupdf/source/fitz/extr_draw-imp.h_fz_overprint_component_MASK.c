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
struct TYPE_3__ {int* mask; } ;
typedef  TYPE_1__ fz_overprint ;

/* Variables and functions */

__attribute__((used)) static int inline FUNC0(const fz_overprint *op, int i)
{
	return ((op->mask[i>>5]>>(i & 31)) & 1) == 0;
}