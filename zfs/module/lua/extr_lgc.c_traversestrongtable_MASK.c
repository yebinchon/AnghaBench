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
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_5__ {int sizearray; int /*<<< orphan*/ * array; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9 (global_State *g, Table *h) {
  Node *n, *limit = FUNC3(h);
  int i;
  for (i = 0; i < h->sizearray; i++)  /* traverse array part */
    FUNC6(g, &h->array[i]);
  for (n = FUNC2(h, 0); n < limit; n++) {  /* traverse hash part */
    FUNC0(n);
    if (FUNC8(FUNC4(n)))  /* entry is empty? */
      FUNC7(n);  /* remove it */
    else {
      FUNC5(!FUNC8(FUNC1(n)));
      FUNC6(g, FUNC1(n));  /* mark key */
      FUNC6(g, FUNC4(n));  /* mark value */
    }
  }
}