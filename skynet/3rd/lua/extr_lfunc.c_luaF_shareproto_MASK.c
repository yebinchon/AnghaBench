#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int sizek; int sizeupvalues; int sizelocvars; int sizep; struct TYPE_8__** p; TYPE_2__* locvars; TYPE_1__* upvalues; int /*<<< orphan*/ * k; int /*<<< orphan*/  source; } ;
struct TYPE_7__ {int /*<<< orphan*/  varname; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ Proto ;

/* Variables and functions */
 scalar_t__ LUA_TSTRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4 (Proto *f) {
  int i;
  if (f == NULL)
    return;
  FUNC1(f);
  FUNC0(f->source);
  for (i = 0; i < f->sizek; i++) {
    if (FUNC3(&f->k[i]) == LUA_TSTRING)
      FUNC0(FUNC2(&f->k[i]));
  }
  for (i = 0; i < f->sizeupvalues; i++)
    FUNC0(f->upvalues[i].name);
  for (i = 0; i < f->sizelocvars; i++)
    FUNC0(f->locvars[i].varname);
  for (i = 0; i < f->sizep; i++)
    FUNC4(f->p[i]);
}