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
typedef  scalar_t__ uint32_t ;
struct skynet_context {scalar_t__ handle; } ;
struct TYPE_2__ {scalar_t__ monitor_exit; } ;

/* Variables and functions */
 TYPE_1__ G_NODE ; 
 int /*<<< orphan*/  PTYPE_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (struct skynet_context*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct skynet_context*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct skynet_context * context, uint32_t handle) {
	if (handle == 0) {
		handle = context->handle;
		FUNC0(context, "KILL self");
	} else {
		FUNC0(context, "KILL :%0x", handle);
	}
	if (G_NODE.monitor_exit) {
		FUNC2(context,  handle, G_NODE.monitor_exit, PTYPE_CLIENT, 0, NULL, 0);
	}
	FUNC1(handle);
}