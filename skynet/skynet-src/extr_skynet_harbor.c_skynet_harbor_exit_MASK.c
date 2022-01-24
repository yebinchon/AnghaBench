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
struct skynet_context {int dummy; } ;

/* Variables and functions */
 struct skynet_context* REMOTE ; 
 int /*<<< orphan*/  FUNC0 (struct skynet_context*) ; 

void
FUNC1() {
	struct skynet_context * ctx = REMOTE;
	REMOTE= NULL;
	if (ctx) {
		FUNC0(ctx);
	}
}