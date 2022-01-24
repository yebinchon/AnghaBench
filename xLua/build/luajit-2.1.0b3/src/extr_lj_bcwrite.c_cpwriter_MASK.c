#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/ * lua_CFunction ;
struct TYPE_5__ {int /*<<< orphan*/  pt; int /*<<< orphan*/  sb; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ BCWriteCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static TValue *FUNC5(lua_State *L, lua_CFunction dummy, void *ud)
{
  BCWriteCtx *ctx = (BCWriteCtx *)ud;
  FUNC0(L); FUNC0(dummy);
  FUNC4(&ctx->sb, 1024);  /* Avoids resize for most prototypes. */
  FUNC2(ctx);
  FUNC3(ctx, ctx->pt);
  FUNC1(ctx);
  return NULL;
}