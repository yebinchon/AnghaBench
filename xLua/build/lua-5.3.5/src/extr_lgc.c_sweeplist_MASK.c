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
typedef  int /*<<< orphan*/  lu_mem ;
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_5__ {int marked; struct TYPE_5__* next; } ;
typedef  TYPE_1__ GCObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int maskcolors ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static GCObject **FUNC6 (lua_State *L, GCObject **p, lu_mem count) {
  global_State *g = FUNC0(L);
  int ow = FUNC5(g);
  int white = FUNC4(g);  /* current white */
  while (*p != NULL && count-- > 0) {
    GCObject *curr = *p;
    int marked = curr->marked;
    if (FUNC3(ow, marked)) {  /* is 'curr' dead? */
      *p = curr->next;  /* remove 'curr' from list */
      FUNC2(L, curr);  /* erase 'curr' */
    }
    else {  /* change mark to 'white' */
      curr->marked = FUNC1((marked & maskcolors) | white);
      p = &curr->next;  /* go to next element */
    }
  }
  return (*p == NULL) ? NULL : p;
}