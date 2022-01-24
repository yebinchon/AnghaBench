#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ maxstacksize; scalar_t__ numparams; int is_vararg; scalar_t__ sizeupvalues; scalar_t__ nups; int sizelineinfo; int sizecode; int /*<<< orphan*/ * code; } ;
typedef  TYPE_1__ Proto ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAXSTACK ; 
 scalar_t__ OP_RETURN ; 
 int VARARG_HASARG ; 
 int VARARG_NEEDSARG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2 (const Proto *pt) {
  FUNC1(pt->maxstacksize <= MAXSTACK);
  FUNC1(pt->numparams+(pt->is_vararg & VARARG_HASARG) <= pt->maxstacksize);
  FUNC1(!(pt->is_vararg & VARARG_NEEDSARG) ||
              (pt->is_vararg & VARARG_HASARG));
  FUNC1(pt->sizeupvalues <= pt->nups);
  FUNC1(pt->sizelineinfo == pt->sizecode || pt->sizelineinfo == 0);
  FUNC1(pt->sizecode > 0 && FUNC0(pt->code[pt->sizecode-1]) == OP_RETURN);
  return 1;
}