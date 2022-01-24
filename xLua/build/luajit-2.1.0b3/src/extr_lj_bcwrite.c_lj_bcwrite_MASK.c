#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_Writer ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int strip; int status; int /*<<< orphan*/  sb; void* wdata; int /*<<< orphan*/  wfunc; int /*<<< orphan*/ * pt; } ;
typedef  int /*<<< orphan*/  GCproto ;
typedef  TYPE_1__ BCWriteCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpwriter ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(lua_State *L, GCproto *pt, lua_Writer writer, void *data,
	      int strip)
{
  BCWriteCtx ctx;
  int status;
  ctx.pt = pt;
  ctx.wfunc = writer;
  ctx.wdata = data;
  ctx.strip = strip;
  ctx.status = 0;
  FUNC2(L, &ctx.sb);
  status = FUNC3(L, NULL, &ctx, cpwriter);
  if (status == 0) status = ctx.status;
  FUNC1(FUNC0(FUNC4(&ctx.sb)), &ctx.sb);
  return status;
}