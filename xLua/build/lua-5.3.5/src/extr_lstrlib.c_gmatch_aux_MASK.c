#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_6__ {char const* src_end; int /*<<< orphan*/ * L; } ;
struct TYPE_5__ {char* src; char const* lastmatch; TYPE_2__ ms; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ GMatchState ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (TYPE_2__*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5 (lua_State *L) {
  GMatchState *gm = (GMatchState *)FUNC0(L, FUNC1(3));
  const char *src;
  gm->ms.L = L;
  for (src = gm->src; src <= gm->ms.src_end; src++) {
    const char *e;
    FUNC4(&gm->ms);
    if ((e = FUNC2(&gm->ms, src, gm->p)) != NULL && e != gm->lastmatch) {
      gm->src = gm->lastmatch = e;
      return FUNC3(&gm->ms, src, e);
    }
  }
  return 0;  /* not found */
}