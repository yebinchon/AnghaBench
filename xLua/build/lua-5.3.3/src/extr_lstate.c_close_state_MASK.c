#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  stack; } ;
typedef  TYPE_2__ lua_State ;
struct TYPE_14__ {int /*<<< orphan*/  size; int /*<<< orphan*/  hash; } ;
struct TYPE_16__ {int /*<<< orphan*/  ud; int /*<<< orphan*/  (* frealloc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;TYPE_1__ strt; scalar_t__ version; } ;
typedef  TYPE_3__ global_State ;
typedef  int /*<<< orphan*/  LG ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10 (lua_State *L) {
  global_State *g = FUNC0(L);
  FUNC5(L, L->stack);  /* close all upvalues for this thread */
  FUNC4(L);  /* collect all objects */
  if (g->version)  /* closing a fully built state? */
    FUNC8(L);
  FUNC6(L, FUNC0(L)->strt.hash, FUNC0(L)->strt.size);
  FUNC1(L);
  FUNC7(FUNC3(g) == sizeof(LG));
  (*g->frealloc)(g->ud, FUNC2(L), sizeof(LG), 0);  /* free main block */
}