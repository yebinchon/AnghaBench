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
typedef  int uint64_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static inline uint64_t
FUNC1(uint64_t a, uint64_t b) {
	if (b==1) {
		return a;
	}
	uint64_t t = FUNC1(a, b>>1);
	t = FUNC0(t,t);
	if (b % 2) {
		t = FUNC0(t, a);
	}
	return t;
}