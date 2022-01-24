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
typedef  int uint32_t ;

/* Variables and functions */
 int HANDLE_MASK ; 
 int HARBOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

int 
FUNC1(uint32_t handle) {
	FUNC0(HARBOR != ~0);
	int h = (handle & ~HANDLE_MASK);
	return h != HARBOR && h !=0;
}