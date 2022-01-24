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
struct skynet_message {int session; size_t sz; void* data; scalar_t__ source; } ;
struct skynet_context {scalar_t__ handle; } ;
struct TYPE_2__ {scalar_t__ handle; } ;
struct remote_message {size_t sz; size_t type; void* message; TYPE_1__ destination; } ;

/* Variables and functions */
 size_t MESSAGE_TYPE_MASK ; 
 size_t MESSAGE_TYPE_SHIFT ; 
 int PTYPE_TAG_DONTCOPY ; 
 int /*<<< orphan*/  FUNC0 (struct skynet_context*,int,int*,void**,size_t*) ; 
 scalar_t__ FUNC1 (scalar_t__,struct skynet_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct skynet_context*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct remote_message*,scalar_t__,int) ; 
 struct remote_message* FUNC6 (int) ; 

int
FUNC7(struct skynet_context * context, uint32_t source, uint32_t destination , int type, int session, void * data, size_t sz) {
	if ((sz & MESSAGE_TYPE_MASK) != sz) {
		FUNC2(context, "The message to %x is too large", destination);
		if (type & PTYPE_TAG_DONTCOPY) {
			FUNC3(data);
		}
		return -2;
	}
	FUNC0(context, type, &session, (void **)&data, &sz);

	if (source == 0) {
		source = context->handle;
	}

	if (destination == 0) {
		if (data) {
			FUNC2(context, "Destination address can't be 0");
			FUNC3(data);
			return -1;
		}

		return session;
	}
	if (FUNC4(destination)) {
		struct remote_message * rmsg = FUNC6(sizeof(*rmsg));
		rmsg->destination.handle = destination;
		rmsg->message = data;
		rmsg->sz = sz & MESSAGE_TYPE_MASK;
		rmsg->type = sz >> MESSAGE_TYPE_SHIFT;
		FUNC5(rmsg, source, session);
	} else {
		struct skynet_message smsg;
		smsg.source = source;
		smsg.session = session;
		smsg.data = data;
		smsg.sz = sz;

		if (FUNC1(destination, &smsg)) {
			FUNC3(data);
			return -1;
		}
	}
	return session;
}