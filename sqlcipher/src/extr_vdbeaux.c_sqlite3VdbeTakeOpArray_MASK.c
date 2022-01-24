#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VdbeOp ;
struct TYPE_6__ {int nOp; int /*<<< orphan*/ * aOp; int /*<<< orphan*/  btreeMask; TYPE_1__* db; } ;
typedef  TYPE_2__ Vdbe ;
struct TYPE_5__ {int /*<<< orphan*/  mallocFailed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int*) ; 

VdbeOp *FUNC3(Vdbe *p, int *pnOp, int *pnMaxArg){
  VdbeOp *aOp = p->aOp;
  FUNC1( aOp && !p->db->mallocFailed );

  /* Check that sqlite3VdbeUsesBtree() was not called on this VM */
  FUNC1( FUNC0(p->btreeMask) );

  FUNC2(p, pnMaxArg);
  *pnOp = p->nOp;
  p->aOp = 0;
  return aOp;
}