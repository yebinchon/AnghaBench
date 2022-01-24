#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ magic; int nOp; TYPE_3__* pParse; } ;
typedef  TYPE_2__ Vdbe ;
struct TYPE_9__ {int nLabel; scalar_t__ nLabelAlloc; int* aLabel; TYPE_1__* db; } ;
struct TYPE_7__ {int flags; } ;
typedef  TYPE_3__ Parse ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int SQLITE_VdbeAddopTrace ; 
 scalar_t__ VDBE_MAGIC_INIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*,int) ; 

void FUNC4(Vdbe *v, int x){
  Parse *p = v->pParse;
  int j = FUNC0(x);
  FUNC1( v->magic==VDBE_MAGIC_INIT );
  FUNC1( j<-p->nLabel );
  FUNC1( j>=0 );
#ifdef SQLITE_DEBUG
  if( p->db->flags & SQLITE_VdbeAddopTrace ){
    printf("RESOLVE LABEL %d to %d\n", x, v->nOp);
  }
#endif
  if( p->nLabelAlloc + p->nLabel < 0 ){
    FUNC3(p,v,j);
  }else{
    FUNC1( p->aLabel[j]==(-1) ); /* Labels may only be resolved once */
    p->aLabel[j] = v->nOp;
  }
}