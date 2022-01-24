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
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct skynet_context* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct skynet_context*,int) ; 

__attribute__((used)) static int
FUNC4(lua_State *L) {
	int id = FUNC0(L,1);
	struct skynet_context * ctx = FUNC1(L, FUNC2(1));
	FUNC3(ctx, id);
	return 0;
}