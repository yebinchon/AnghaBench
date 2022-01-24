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
struct socket_info {int type; char* name; int /*<<< orphan*/  wtime; int /*<<< orphan*/  rtime; int /*<<< orphan*/  wbuffer; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  opaque; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  SOCKET_INFO_BIND 131 
#define  SOCKET_INFO_LISTEN 130 
#define  SOCKET_INFO_TCP 129 
#define  SOCKET_INFO_UDP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static void
FUNC4(lua_State *L, struct socket_info *si) {
	FUNC0(L);
	FUNC1(L, si->id);
	FUNC3(L, -2, "id");
	FUNC1(L, si->opaque);
	FUNC3(L, -2, "address");
	switch(si->type) {
	case SOCKET_INFO_LISTEN:
		FUNC2(L, "LISTEN");
		FUNC3(L, -2, "type");
		FUNC1(L, si->read);
		FUNC3(L, -2, "accept");
		FUNC1(L, si->rtime);
		FUNC3(L, -2, "rtime");
		if (si->name[0]) {
			FUNC2(L, si->name);
			FUNC3(L, -2, "sock");
		}
		return;
	case SOCKET_INFO_TCP:
		FUNC2(L, "TCP");
		break;
	case SOCKET_INFO_UDP:
		FUNC2(L, "UDP");
		break;
	case SOCKET_INFO_BIND:
		FUNC2(L, "BIND");
		break;
	default:
		FUNC2(L, "UNKNOWN");
		FUNC3(L, -2, "type");
		return;
	}
	FUNC3(L, -2, "type");
	FUNC1(L, si->read);
	FUNC3(L, -2, "read");
	FUNC1(L, si->write);
	FUNC3(L, -2, "write");
	FUNC1(L, si->wbuffer);
	FUNC3(L, -2, "wbuffer");
	FUNC1(L, si->rtime);
	FUNC3(L, -2, "rtime");
	FUNC1(L, si->wtime);
	FUNC3(L, -2, "wtime");
	if (si->name[0]) {
		FUNC2(L, si->name);
		FUNC3(L, -2, "peer");
	}
}