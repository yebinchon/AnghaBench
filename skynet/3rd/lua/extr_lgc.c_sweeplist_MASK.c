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
 int /*<<< orphan*/  SHAREBIT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int maskcolors ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static GCObject **FUNC7 (lua_State *L, GCObject **p, lu_mem count) {
  global_State *g = FUNC0(L);
  int ow = FUNC6(g) | FUNC1(SHAREBIT);  /* shared object never dead */
  int white = FUNC5(g);  /* current white */
  while (*p != NULL && count-- > 0) {
    GCObject *curr = *p;
    int marked = curr->marked;
    if (FUNC4(ow, marked)) {  /* is 'curr' dead? */
      *p = curr->next;  /* remove 'curr' from list */
      FUNC3(L, curr);  /* erase 'curr' */
    }
    else {  /* change mark to 'white' */
      curr->marked = FUNC2((marked & maskcolors) | (marked & FUNC1(SHAREBIT)) |white);
      p = &curr->next;  /* go to next element */
    }
  }
  return (*p == NULL) ? NULL : p;
}