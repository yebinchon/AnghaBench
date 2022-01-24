#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {scalar_t__ total; } ;
struct TYPE_5__ {TYPE_1__ gc; int /*<<< orphan*/  allocd; void* (* allocf ) (int /*<<< orphan*/ ,void*,scalar_t__,scalar_t__) ;} ;
typedef  TYPE_2__ global_State ;
typedef  scalar_t__ GCSize ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,void*,scalar_t__,scalar_t__) ; 

void *FUNC5(lua_State *L, void *p, GCSize osz, GCSize nsz)
{
  global_State *g = FUNC0(L);
  FUNC3((osz == 0) == (p == NULL));
  p = g->allocf(g->allocd, p, osz, nsz);
  if (p == NULL && nsz > 0)
    FUNC2(L);
  FUNC3((nsz == 0) == (p == NULL));
  FUNC3(FUNC1(p));
  g->gc.total = (g->gc.total - osz) + nsz;
  return p;
}