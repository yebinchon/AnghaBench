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
 char* FUNC1 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct skynet_context* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct skynet_context*,char const*,int) ; 

__attribute__((used)) static int
FUNC7(lua_State *L) {
	size_t sz = 0;
	const char * addr = FUNC1(L,1,&sz);
	char tmp[sz];
	int port = 0;
	const char * host = FUNC0(L, tmp, addr, 2, &port);
	if (port == 0) {
		return FUNC2(L, "Invalid port");
	}
	struct skynet_context * ctx = FUNC4(L, FUNC5(1));
	int id = FUNC6(ctx, host, port);
	FUNC3(L, id);

	return 1;
}