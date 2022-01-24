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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct socket_sendbuffer {int id; size_t sz; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  type; } ;
struct skynet_context {int dummy; } ;
struct remote_message_header {int /*<<< orphan*/  destination; int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCKET_BUFFER_RAWPOINTER ; 
 size_t UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct remote_message_header*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct skynet_context*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct skynet_context*,struct socket_sendbuffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct skynet_context * ctx, int fd, const char * buffer, size_t sz, struct remote_message_header * cookie) {
	size_t sz_header = sz+sizeof(*cookie);
	if (sz_header > UINT32_MAX) {
		FUNC2(ctx, "remote message from :%08x to :%08x is too large.", cookie->source, cookie->destination);
		return;
	}
	uint8_t sendbuf[sz_header+4];
	FUNC4(sendbuf, (uint32_t)sz_header);
	FUNC1(sendbuf+4, buffer, sz);
	FUNC0(cookie, sendbuf+4+sz);

	struct socket_sendbuffer tmp;
	tmp.id = fd;
	tmp.type = SOCKET_BUFFER_RAWPOINTER;
	tmp.buffer = sendbuf;
	tmp.sz = sz_header+4;

	// ignore send error, because if the connection is broken, the mainloop will recv a message.
	FUNC3(ctx, &tmp);
}