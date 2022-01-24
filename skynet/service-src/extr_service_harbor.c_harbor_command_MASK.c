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
typedef  int /*<<< orphan*/  uint32_t ;
struct slave {int fd; int /*<<< orphan*/  status; } ;
struct remote_name {char* name; int /*<<< orphan*/  handle; } ;
struct harbor {int /*<<< orphan*/  ctx; struct slave* s; } ;
typedef  int /*<<< orphan*/  rn ;

/* Variables and functions */
 int GLOBALNAME_LENGTH ; 
 int REMOTE_MAX ; 
 int /*<<< orphan*/  STATUS_HANDSHAKE ; 
 int /*<<< orphan*/  STATUS_HEADER ; 
 int /*<<< orphan*/  FUNC0 (struct harbor*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct harbor*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct remote_name*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct harbor*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct harbor * h, const char * msg, size_t sz, int session, uint32_t source) {
	const char * name = msg + 2;
	int s = (int)sz;
	s -= 2;
	switch(msg[0]) {
	case 'N' : {
		if (s <=0 || s>= GLOBALNAME_LENGTH) {
			FUNC4(h->ctx, "Invalid global name %s", name);
			return;
		}
		struct remote_name rn;
		FUNC3(&rn, 0, sizeof(rn));
		FUNC2(rn.name, name, s);
		rn.handle = source;
		FUNC7(h, rn.name, rn.handle);
		break;
	}
	case 'S' :
	case 'A' : {
		char buffer[s+1];
		FUNC2(buffer, name, s);
		buffer[s] = 0;
		int fd=0, id=0;
		FUNC6(buffer, "%d %d",&fd,&id);
		if (fd == 0 || id <= 0 || id>=REMOTE_MAX) {
			FUNC4(h->ctx, "Invalid command %c %s", msg[0], buffer);
			return;
		}
		struct slave * slave = &h->s[id];
		if (slave->fd != 0) {
			FUNC4(h->ctx, "Harbor %d alreay exist", id);
			return;
		}
		slave->fd = fd;

		FUNC5(h->ctx, fd);
		FUNC1(h, id);
		if (msg[0] == 'S') {
			slave->status = STATUS_HANDSHAKE;
		} else {
			slave->status = STATUS_HEADER;
			FUNC0(h,id);
		}
		break;
	}
	default:
		FUNC4(h->ctx, "Unknown command %s", msg);
		return;
	}
}