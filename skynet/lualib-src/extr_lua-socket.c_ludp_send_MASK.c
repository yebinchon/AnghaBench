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
struct socket_sendbuffer {int id; } ;
struct skynet_context {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,struct socket_sendbuffer*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct skynet_context* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct skynet_context*,char const*,struct socket_sendbuffer*) ; 

__attribute__((used)) static int
FUNC7(lua_State *L) {
	struct skynet_context * ctx = FUNC4(L, FUNC5(1));
	int id = FUNC1(L, 1);
	const char * address = FUNC2(L, 2);
	struct socket_sendbuffer buf;
	buf.id = id;
	FUNC0(L, 3, &buf);
	int err = FUNC6(ctx, address, &buf);

	FUNC3(L, !err);

	return 1;
}