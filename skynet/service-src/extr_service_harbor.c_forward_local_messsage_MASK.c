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
struct remote_message_header {int destination; int source; scalar_t__ session; } ;
struct harbor {int /*<<< orphan*/  ctx; scalar_t__ id; } ;

/* Variables and functions */
 int HANDLE_MASK ; 
 int HANDLE_REMOTE_SHIFT ; 
 int HEADER_COOKIE_LENGTH ; 
 int PTYPE_ERROR ; 
 int PTYPE_TAG_DONTCOPY ; 
 int /*<<< orphan*/  FUNC0 (int const*,struct remote_message_header*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int,int,void*,int) ; 

__attribute__((used)) static void
FUNC3(struct harbor *h, void *msg, int sz) {
	const char * cookie = msg;
	cookie += sz - HEADER_COOKIE_LENGTH;
	struct remote_message_header header;
	FUNC0((const uint32_t *)cookie, &header);

	uint32_t destination = header.destination;
	int type = destination >> HANDLE_REMOTE_SHIFT;
	destination = (destination & HANDLE_MASK) | ((uint32_t)h->id << HANDLE_REMOTE_SHIFT);

	if (FUNC2(h->ctx, header.source, destination, type | PTYPE_TAG_DONTCOPY , (int)header.session, (void *)msg, sz-HEADER_COOKIE_LENGTH) < 0) {
		if (type != PTYPE_ERROR) {
			// don't need report error when type is error
			FUNC2(h->ctx, destination, header.source , PTYPE_ERROR, (int)header.session, NULL, 0);
		}
		FUNC1(h->ctx, "Unknown destination :%x from :%x type(%d)", destination, header.source, type);
	}
}