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
struct TYPE_2__ {scalar_t__ handle; int /*<<< orphan*/  name; } ;
struct remote_message {size_t sz; size_t type; void* message; TYPE_1__ destination; } ;

/* Variables and functions */
 size_t MESSAGE_TYPE_MASK ; 
 size_t MESSAGE_TYPE_SHIFT ; 
 int PTYPE_TAG_DONTCOPY ; 
 int /*<<< orphan*/  FUNC0 (struct skynet_context*,int,int*,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct skynet_context*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct remote_message*,scalar_t__,int) ; 
 struct remote_message* FUNC6 (int) ; 
 int FUNC7 (struct skynet_context*,scalar_t__,scalar_t__,int,int,void*,size_t) ; 
 scalar_t__ FUNC8 (char const*,int /*<<< orphan*/ *,int) ; 

int
FUNC9(struct skynet_context * context, uint32_t source, const char * addr , int type, int session, void * data, size_t sz) {
	if (source == 0) {
		source = context->handle;
	}
	uint32_t des = 0;
	if (addr[0] == ':') {
		des = FUNC8(addr+1, NULL, 16);
	} else if (addr[0] == '.') {
		des = FUNC4(addr + 1);
		if (des == 0) {
			if (type & PTYPE_TAG_DONTCOPY) {
				FUNC3(data);
			}
			return -1;
		}
	} else {
		if ((sz & MESSAGE_TYPE_MASK) != sz) {
			FUNC2(context, "The message to %s is too large", addr);
			if (type & PTYPE_TAG_DONTCOPY) {
				FUNC3(data);
			}
			return -2;
		}
		FUNC0(context, type, &session, (void **)&data, &sz);

		struct remote_message * rmsg = FUNC6(sizeof(*rmsg));
		FUNC1(rmsg->destination.name, addr);
		rmsg->destination.handle = 0;
		rmsg->message = data;
		rmsg->sz = sz & MESSAGE_TYPE_MASK;
		rmsg->type = sz >> MESSAGE_TYPE_SHIFT;

		FUNC5(rmsg, source, session);
		return session;
	}

	return FUNC7(context, source, des, type, session, data, sz);
}