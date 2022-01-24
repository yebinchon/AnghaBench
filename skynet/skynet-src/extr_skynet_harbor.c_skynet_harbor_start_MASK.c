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

/* Variables and functions */
 void* REMOTE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 

void
FUNC1(void *ctx) {
	// the HARBOR must be reserved to ensure the pointer is valid.
	// It will be released at last by calling skynet_harbor_exit
	FUNC0(ctx);
	REMOTE = ctx;
}