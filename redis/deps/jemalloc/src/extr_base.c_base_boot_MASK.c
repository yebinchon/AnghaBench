#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;

/* Variables and functions */
 int /*<<< orphan*/ * b0 ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  extent_hooks_default ; 

bool
FUNC1(tsdn_t *tsdn) {
	b0 = FUNC0(tsdn, 0, (extent_hooks_t *)&extent_hooks_default);
	return (b0 == NULL);
}