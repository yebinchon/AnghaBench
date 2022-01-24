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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct skynet_socket_message {int dummy; } ;
struct skynet_context {int dummy; } ;
struct gate {int /*<<< orphan*/  hash; } ;

/* Variables and functions */
#define  PTYPE_CLIENT 130 
#define  PTYPE_SOCKET 129 
#define  PTYPE_TEXT 128 
 int /*<<< orphan*/  FUNC0 (struct gate*,void const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gate*,void const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct skynet_context*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct skynet_context*,int,void*,size_t) ; 

__attribute__((used)) static int
FUNC5(struct skynet_context * ctx, void * ud, int type, int session, uint32_t source, const void * msg, size_t sz) {
	struct gate *g = ud;
	switch(type) {
	case PTYPE_TEXT:
		FUNC0(g , msg , (int)sz);
		break;
	case PTYPE_CLIENT: {
		if (sz <=4 ) {
			FUNC3(ctx, "Invalid client message from %x",source);
			break;
		}
		// The last 4 bytes in msg are the id of socket, write following bytes to it
		const uint8_t * idbuf = msg + sz - 4;
		uint32_t uid = idbuf[0] | idbuf[1] << 8 | idbuf[2] << 16 | idbuf[3] << 24;
		int id = FUNC2(&g->hash, uid);
		if (id>=0) {
			// don't send id (last 4 bytes)
			FUNC4(ctx, uid, (void*)msg, sz-4);
			// return 1 means don't free msg
			return 1;
		} else {
			FUNC3(ctx, "Invalid client id %d from %x",(int)uid,source);
			break;
		}
	}
	case PTYPE_SOCKET:
		// recv socket message from skynet_socket
		FUNC1(g, msg, (int)(sz-sizeof(struct skynet_socket_message)));
		break;
	}
	return 0;
}