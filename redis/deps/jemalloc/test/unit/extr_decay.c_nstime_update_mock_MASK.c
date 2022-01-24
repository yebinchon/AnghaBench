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
typedef  int /*<<< orphan*/  nstime_t ;

/* Variables and functions */
 scalar_t__ monotonic_mock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nupdates_mock ; 
 int /*<<< orphan*/  time_mock ; 

__attribute__((used)) static bool
FUNC1(nstime_t *time) {
	nupdates_mock++;
	if (monotonic_mock) {
		FUNC0(time, &time_mock);
	}
	return !monotonic_mock;
}