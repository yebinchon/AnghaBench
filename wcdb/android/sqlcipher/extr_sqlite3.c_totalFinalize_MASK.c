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
typedef  int /*<<< orphan*/  sqlite3_context ;
struct TYPE_3__ {double rSum; } ;
typedef  TYPE_1__ SumCtx ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double) ; 

__attribute__((used)) static void FUNC2(sqlite3_context *context){
  SumCtx *p;
  p = FUNC0(context, 0);
  /* (double)0 In case of SQLITE_OMIT_FLOATING_POINT... */
  FUNC1(context, p ? p->rSum : (double)0);
}