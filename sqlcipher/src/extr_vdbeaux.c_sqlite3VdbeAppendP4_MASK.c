#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* p; } ;
struct TYPE_7__ {int p4type; TYPE_1__ p4; } ;
typedef  TYPE_2__ VdbeOp ;
struct TYPE_8__ {int nOp; TYPE_2__* aOp; TYPE_5__* db; } ;
typedef  TYPE_3__ Vdbe ;
struct TYPE_9__ {scalar_t__ mallocFailed; } ;

/* Variables and functions */
 int P4_INT32 ; 
 int P4_NOTUSED ; 
 int P4_VTAB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int,void*) ; 

void FUNC2(Vdbe *p, void *pP4, int n){
  VdbeOp *pOp;
  FUNC0( n!=P4_INT32 && n!=P4_VTAB );
  FUNC0( n<=0 );
  if( p->db->mallocFailed ){
    FUNC1(p->db, n, pP4);
  }else{
    FUNC0( pP4!=0 );
    FUNC0( p->nOp>0 );
    pOp = &p->aOp[p->nOp-1];
    FUNC0( pOp->p4type==P4_NOTUSED );
    pOp->p4type = n;
    pOp->p4.p = pP4;
  }
}