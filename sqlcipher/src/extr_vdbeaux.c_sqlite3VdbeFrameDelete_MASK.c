#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t nChildMem; int nChildCsr; TYPE_2__* v; int /*<<< orphan*/  pAuxData; } ;
typedef  TYPE_1__ VdbeFrame ;
typedef  int /*<<< orphan*/  VdbeCursor ;
struct TYPE_8__ {int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  Mem ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 

void FUNC7(VdbeFrame *p){
  int i;
  Mem *aMem = FUNC0(p);
  VdbeCursor **apCsr = (VdbeCursor **)&aMem[p->nChildMem];
  FUNC1( FUNC5(p) );
  for(i=0; i<p->nChildCsr; i++){
    FUNC6(p->v, apCsr[i]);
  }
  FUNC2(aMem, p->nChildMem);
  FUNC4(p->v->db, &p->pAuxData, -1, 0);
  FUNC3(p->v->db, p);
}