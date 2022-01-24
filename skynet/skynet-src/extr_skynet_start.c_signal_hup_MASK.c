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
typedef  scalar_t__ uint32_t ;
struct skynet_message {size_t sz; int /*<<< orphan*/ * data; scalar_t__ session; scalar_t__ source; } ;

/* Variables and functions */
 size_t MESSAGE_TYPE_SHIFT ; 
 scalar_t__ PTYPE_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct skynet_message*) ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2() {
	// make log file reopen

	struct skynet_message smsg;
	smsg.source = 0;
	smsg.session = 0;
	smsg.data = NULL;
	smsg.sz = (size_t)PTYPE_SYSTEM << MESSAGE_TYPE_SHIFT;
	uint32_t logger = FUNC1("logger");
	if (logger) {
		FUNC0(logger, &smsg);
	}
}