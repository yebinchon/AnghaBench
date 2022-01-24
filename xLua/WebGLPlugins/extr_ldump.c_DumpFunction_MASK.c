#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ strip; } ;
struct TYPE_18__ {int /*<<< orphan*/  maxstacksize; int /*<<< orphan*/  is_vararg; int /*<<< orphan*/  numparams; int /*<<< orphan*/  lastlinedefined; int /*<<< orphan*/  linedefined; int /*<<< orphan*/ * source; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_1__ Proto ;
typedef  TYPE_2__ DumpState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC8 (const Proto *f, TString *psource, DumpState *D) {
  if (D->strip || f->source == psource)
    FUNC6(NULL, D);  /* no debug info or same source as its parent */
  else
    FUNC6(f->source, D);
  FUNC4(f->linedefined, D);
  FUNC4(f->lastlinedefined, D);
  FUNC0(f->numparams, D);
  FUNC0(f->is_vararg, D);
  FUNC0(f->maxstacksize, D);
  FUNC1(f, D);
  FUNC2(f, D);
  FUNC7(f, D);
  FUNC5(f, D);
  FUNC3(f, D);
}