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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct skynet_context* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct skynet_context*,struct socket_sendbuffer*) ; 

__attribute__((used)) static int
FUNC6(lua_State *L) {
	struct skynet_context * ctx = FUNC3(L, FUNC4(1));
	int id = FUNC1(L, 1);
	struct socket_sendbuffer buf;
	buf.id = id;
	FUNC0(L, 2, &buf);
	int err = FUNC5(ctx, &buf);
	FUNC2(L, !err);
	return 1;
}