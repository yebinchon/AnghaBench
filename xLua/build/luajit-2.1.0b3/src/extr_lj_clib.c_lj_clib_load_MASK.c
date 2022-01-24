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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {void* handle; } ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  TYPE_1__ CLibrary ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(lua_State *L, GCtab *mt, GCstr *name, int global)
{
  void *handle = FUNC0(L, FUNC2(name), global);
  CLibrary *cl = FUNC1(L, mt);
  cl->handle = handle;
}