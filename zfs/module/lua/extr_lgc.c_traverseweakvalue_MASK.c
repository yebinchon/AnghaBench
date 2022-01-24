#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  grayagain; int /*<<< orphan*/  weak; } ;
typedef  TYPE_1__ global_State ;
struct TYPE_11__ {scalar_t__ sizearray; } ;
typedef  TYPE_2__ Table ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11 (global_State *g, Table *h) {
  Node *n, *limit = FUNC3(h);
  /* if there is array part, assume it may have white values (do not
     traverse it just to check) */
  int hasclears = (h->sizearray > 0);
  for (n = FUNC2(h, 0); n < limit; n++) {
    FUNC0(n);
    if (FUNC10(FUNC4(n)))  /* entry is empty? */
      FUNC9(n);  /* remove it */
    else {
      FUNC7(!FUNC10(FUNC1(n)));
      FUNC8(g, FUNC1(n));  /* mark key */
      if (!hasclears && FUNC5(g, FUNC4(n)))  /* is there a white value? */
        hasclears = 1;  /* table will have to be cleared */
    }
  }
  if (hasclears)
    FUNC6(h, &g->weak);  /* has to be cleared later */
  else  /* no white values */
    FUNC6(h, &g->grayagain);  /* no need to clean */
}