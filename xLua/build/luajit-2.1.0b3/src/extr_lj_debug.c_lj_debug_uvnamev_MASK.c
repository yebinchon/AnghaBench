#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_15__ {int /*<<< orphan*/  uv; } ;
struct TYPE_12__ {scalar_t__ nupvalues; int /*<<< orphan*/ * upvalue; } ;
struct TYPE_11__ {int /*<<< orphan*/ * uvptr; } ;
struct TYPE_14__ {TYPE_2__ c; TYPE_1__ l; } ;
struct TYPE_13__ {scalar_t__ sizeuv; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_3__ GCproto ;
typedef  TYPE_4__ GCfunc ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (TYPE_4__*) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 char const* FUNC4 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

const char *FUNC7(cTValue *o, uint32_t idx, TValue **tvp)
{
  if (FUNC5(o)) {
    GCfunc *fn = FUNC0(o);
    if (FUNC3(fn)) {
      GCproto *pt = FUNC1(fn);
      if (idx < pt->sizeuv) {
	*tvp = FUNC6(&FUNC2(fn->l.uvptr[idx])->uv);
	return FUNC4(pt, idx);
      }
    } else {
      if (idx < fn->c.nupvalues) {
	*tvp = &fn->c.upvalue[idx];
	return "";
      }
    }
  }
  return NULL;
}