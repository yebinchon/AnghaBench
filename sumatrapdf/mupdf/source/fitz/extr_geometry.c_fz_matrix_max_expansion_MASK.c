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
struct TYPE_3__ {int /*<<< orphan*/  d; int /*<<< orphan*/  c; int /*<<< orphan*/  b; int /*<<< orphan*/  a; } ;
typedef  TYPE_1__ fz_matrix ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ) ; 

float
FUNC1(fz_matrix m)
{
	float max = FUNC0(m.a);
	float x = FUNC0(m.b);
	if (max < x)
		max = x;
	x = FUNC0(m.c);
	if (max < x)
		max = x;
	x = FUNC0(m.d);
	if (max < x)
		max = x;
	return max;
}