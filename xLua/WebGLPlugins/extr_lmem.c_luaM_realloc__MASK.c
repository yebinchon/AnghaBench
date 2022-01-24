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
struct TYPE_3__ {scalar_t__ GCdebt; int /*<<< orphan*/  ud; void* (* frealloc ) (int /*<<< orphan*/ ,void*,size_t,size_t) ;scalar_t__ version; scalar_t__ gcrunning; } ;
typedef  TYPE_1__ global_State ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LUA_ERRMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,void*,size_t,size_t) ; 
 void* FUNC5 (int /*<<< orphan*/ ,void*,size_t,size_t) ; 

void *FUNC6 (lua_State *L, void *block, size_t osize, size_t nsize) {
  void *newblock;
  global_State *g = FUNC0(L);
  size_t realosize = (block) ? osize : 0;
  FUNC3((realosize == 0) == (block == NULL));
#if defined(HARDMEMTESTS)
  if (nsize > realosize && g->gcrunning)
    luaC_fullgc(L, 1);  /* force a GC whenever possible */
#endif
  newblock = (*g->frealloc)(g->ud, block, osize, nsize);
  if (newblock == NULL && nsize > 0) {
    FUNC3(nsize > realosize);  /* cannot fail when shrinking a block */
    if (g->version) {  /* is state fully built? */
      FUNC1(L, 1);  /* try to free some memory... */
      newblock = (*g->frealloc)(g->ud, block, osize, nsize);  /* try again */
    }
    if (newblock == NULL)
      FUNC2(L, LUA_ERRMEM);
  }
  FUNC3((nsize == 0) == (newblock == NULL));
  g->GCdebt = (g->GCdebt + nsize) - realosize;
  return newblock;
}