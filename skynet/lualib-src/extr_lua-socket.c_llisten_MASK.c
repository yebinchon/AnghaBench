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
 int /*<<< orphan*/  BACKLOG ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct skynet_context* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct skynet_context*,char const*,int,int) ; 

__attribute__((used)) static int
FUNC8(lua_State *L) {
	const char * host = FUNC1(L,1);
	int port = FUNC0(L,2);
	int backlog = FUNC3(L,3,BACKLOG);
	struct skynet_context * ctx = FUNC5(L, FUNC6(1));
	int id = FUNC7(ctx, host,port,backlog);
	if (id < 0) {
		return FUNC2(L, "Listen error");
	}

	FUNC4(L,id);
	return 1;
}