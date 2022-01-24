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
struct TYPE_2__ {int len; int /*<<< orphan*/  vec; } ;
typedef  TYPE_1__ prof_bt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC2(const void *k1, const void *k2) {
	const prof_bt_t *bt1 = (prof_bt_t *)k1;
	const prof_bt_t *bt2 = (prof_bt_t *)k2;

	FUNC0(config_prof);

	if (bt1->len != bt2->len) {
		return false;
	}
	return (FUNC1(bt1->vec, bt2->vec, bt1->len * sizeof(void *)) == 0);
}