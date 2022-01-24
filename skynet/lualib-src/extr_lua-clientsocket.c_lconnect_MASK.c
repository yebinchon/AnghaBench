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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(lua_State *L) {
	const char * addr = FUNC5(L, 1);
	int port = FUNC4(L, 2);
	int fd = FUNC8(AF_INET,SOCK_STREAM,0);
	struct sockaddr_in my_addr;

	my_addr.sin_addr.s_addr=FUNC3(addr);
	my_addr.sin_family=AF_INET;
	my_addr.sin_port=FUNC2(port);

	int r = FUNC0(fd,(struct sockaddr *)&my_addr,sizeof(struct sockaddr_in));

	if (r == -1) {
		return FUNC6(L, "Connect %s %d failed", addr, port);
	}

	int flag = FUNC1(fd, F_GETFL, 0);
	FUNC1(fd, F_SETFL, flag | O_NONBLOCK);

	FUNC7(L, fd);

	return 1;
}