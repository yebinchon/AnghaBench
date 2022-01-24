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
struct logger {int /*<<< orphan*/ * filename; scalar_t__ close; int /*<<< orphan*/ * handle; } ;

/* Variables and functions */
 struct logger* FUNC0 (int) ; 

struct logger *
FUNC1(void) {
	struct logger * inst = FUNC0(sizeof(*inst));
	inst->handle = NULL;
	inst->close = 0;
	inst->filename = NULL;

	return inst;
}