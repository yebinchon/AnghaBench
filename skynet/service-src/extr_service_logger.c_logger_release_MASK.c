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
struct logger {struct logger* filename; int /*<<< orphan*/  handle; scalar_t__ close; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct logger*) ; 

void
FUNC2(struct logger * inst) {
	if (inst->close) {
		FUNC0(inst->handle);
	}
	FUNC1(inst->filename);
	FUNC1(inst);
}