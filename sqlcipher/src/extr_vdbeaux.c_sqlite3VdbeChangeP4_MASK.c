#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_2__ sqlite3 ;
struct TYPE_11__ {scalar_t__ magic; int nOp; TYPE_4__* aOp; TYPE_2__* db; } ;
typedef  TYPE_3__ Vdbe ;
typedef  int /*<<< orphan*/  VTable ;
struct TYPE_9__ {void* p; int /*<<< orphan*/  i; } ;
struct TYPE_12__ {int p4type; TYPE_1__ p4; } ;
typedef  TYPE_4__ Op ;

/* Variables and functions */
 int P4_INT32 ; 
 int P4_VTAB ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ VDBE_MAGIC_INIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*,char const*,int) ; 

void FUNC5(Vdbe *p, int addr, const char *zP4, int n){
  Op *pOp;
  sqlite3 *db;
  FUNC1( p!=0 );
  db = p->db;
  FUNC1( p->magic==VDBE_MAGIC_INIT );
  FUNC1( p->aOp!=0 || db->mallocFailed );
  if( db->mallocFailed ){
    if( n!=P4_VTAB ) FUNC2(db, n, (void*)*(char**)&zP4);
    return;
  }
  FUNC1( p->nOp>0 );
  FUNC1( addr<p->nOp );
  if( addr<0 ){
    addr = p->nOp - 1;
  }
  pOp = &p->aOp[addr];
  if( n>=0 || pOp->p4type ){
    FUNC4(p, pOp, zP4, n);
    return;
  }
  if( n==P4_INT32 ){
    /* Note: this cast is safe, because the origin data point was an int
    ** that was cast to a (const char *). */
    pOp->p4.i = FUNC0(zP4);
    pOp->p4type = P4_INT32;
  }else if( zP4!=0 ){
    FUNC1( n<0 );
    pOp->p4.p = (void*)zP4;
    pOp->p4type = (signed char)n;
    if( n==P4_VTAB ) FUNC3((VTable*)zP4);
  }
}