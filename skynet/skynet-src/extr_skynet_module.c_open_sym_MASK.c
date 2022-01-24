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
struct skynet_module {int /*<<< orphan*/ * init; void* signal; void* release; void* create; } ;

/* Variables and functions */
 void* FUNC0 (struct skynet_module*,char*) ; 

__attribute__((used)) static int
FUNC1(struct skynet_module *mod) {
	mod->create = FUNC0(mod, "_create");
	mod->init = FUNC0(mod, "_init");
	mod->release = FUNC0(mod, "_release");
	mod->signal = FUNC0(mod, "_signal");

	return mod->init == NULL;
}