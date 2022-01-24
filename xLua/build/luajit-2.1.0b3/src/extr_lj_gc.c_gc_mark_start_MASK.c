#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  state; int /*<<< orphan*/  weak; int /*<<< orphan*/  grayagain; int /*<<< orphan*/  gray; } ;
struct TYPE_12__ {TYPE_1__ gc; int /*<<< orphan*/  registrytv; } ;
typedef  TYPE_2__ global_State ;
struct TYPE_13__ {int /*<<< orphan*/  env; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCSpropagate ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(global_State *g)
{
  FUNC4(g->gc.gray);
  FUNC4(g->gc.grayagain);
  FUNC4(g->gc.weak);
  FUNC1(g, FUNC3(g));
  FUNC1(g, FUNC5(FUNC3(g)->env));
  FUNC2(g, &g->registrytv);
  FUNC0(g);
  g->gc.state = GCSpropagate;
}