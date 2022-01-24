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
 size_t MESSAGE_TYPE_SHIFT ; 
 int PTYPE_TAG_ALLOCSESSION ; 
 int PTYPE_TAG_DONTCOPY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,size_t) ; 
 int FUNC2 (struct skynet_context*) ; 
 char* FUNC3 (size_t) ; 

__attribute__((used)) static void
FUNC4(struct skynet_context * context, int type, int *session, void ** data, size_t * sz) {
	int needcopy = !(type & PTYPE_TAG_DONTCOPY);
	int allocsession = type & PTYPE_TAG_ALLOCSESSION;
	type &= 0xff;

	if (allocsession) {
		FUNC0(*session == 0);
		*session = FUNC2(context);
	}

	if (needcopy && *data) {
		char * msg = FUNC3(*sz+1);
		FUNC1(msg, *data, *sz);
		msg[*sz] = '\0';
		*data = msg;
	}

	*sz |= (size_t)type << MESSAGE_TYPE_SHIFT;
}