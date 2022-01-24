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
struct logger {int /*<<< orphan*/  handle; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
#define  PTYPE_SYSTEM 129 
#define  PTYPE_TEXT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void const*,size_t,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct skynet_context * context, void *ud, int type, int session, uint32_t source, const void * msg, size_t sz) {
	struct logger * inst = ud;
	switch (type) {
	case PTYPE_SYSTEM:
		if (inst->filename) {
			inst->handle = FUNC2(inst->filename, "a", inst->handle);
		}
		break;
	case PTYPE_TEXT:
		FUNC1(inst->handle, "[:%08x] ",source);
		FUNC3(msg, sz , 1, inst->handle);
		FUNC1(inst->handle, "\n");
		FUNC0(inst->handle);
		break;
	}

	return 0;
}