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
struct skynet_context {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct skynet_context*,char*,int) ; 
 scalar_t__ FUNC3 () ; 

void
FUNC4(struct skynet_context * ctx, FILE *f, uint32_t handle) {
	FUNC2(ctx, "Close log file :%08x", handle);
	FUNC1(f, "close time: %u\n", (uint32_t)FUNC3());
	FUNC0(f);
}