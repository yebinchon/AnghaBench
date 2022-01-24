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
typedef  int /*<<< orphan*/  uint64_t ;
struct timeval {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 int /*<<< orphan*/  vm ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *) ; 

uint64_t *
FUNC2(int vcpu, struct timeval *ret_tv, int *ret_entries)
{
	static uint64_t statbuf[64];
	struct timeval tv;
	int re;
	int error;

	FUNC0(&tv);
	error = FUNC1(vm, vcpu, &re, ((uint64_t *) &statbuf));

	if (error == 0) {
		if (ret_entries) {
			*ret_entries = re;
		}
		if (ret_tv) {
			*ret_tv = tv;
		}
		return (((uint64_t *) &statbuf));
	} else {
		return (NULL);
	}
}