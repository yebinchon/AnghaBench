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
typedef  int uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  t0; int /*<<< orphan*/  t1; } ;
typedef  TYPE_1__ timedelta_t ;
typedef  int /*<<< orphan*/  nstime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

uint64_t
FUNC3(const timedelta_t *timer) {
	nstime_t delta;

	FUNC0(&delta, &timer->t1);
	FUNC2(&delta, &timer->t0);
	return FUNC1(&delta) / 1000;
}