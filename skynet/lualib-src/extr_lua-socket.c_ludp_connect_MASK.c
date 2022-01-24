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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*,char const*,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct skynet_context* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct skynet_context*,int,char const*,int) ; 

__attribute__((used)) static int
FUNC7(lua_State *L) {
	struct skynet_context * ctx = FUNC4(L, FUNC5(1));
	int id = FUNC1(L, 1);
	size_t sz = 0;
	const char * addr = FUNC2(L,2,&sz);
	char tmp[sz];
	int port = 0;
	const char * host = NULL;
	if (addr) {
		host = FUNC0(L, tmp, addr, 3, &port);
	}

	if (FUNC6(ctx, id, host, port)) {
		return FUNC3(L, "udp connect failed");
	}

	return 0;
}