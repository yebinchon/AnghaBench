#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int nZero; } ;
struct TYPE_11__ {int flags; int n; TYPE_2__ u; int /*<<< orphan*/ * z; TYPE_1__* db; } ;
struct TYPE_9__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_3__ Mem ;

/* Variables and functions */
 int MEM_Blob ; 
 int MEM_Term ; 
 int MEM_Zero ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(Mem *pMem){
  int nByte;
  FUNC1( pMem->flags & MEM_Zero );
  FUNC1( (pMem->flags&MEM_Blob)!=0 || FUNC0(pMem) );
  FUNC7( FUNC6(pMem) );
  FUNC1( !FUNC4(pMem) );
  FUNC1( pMem->db==0 || FUNC5(pMem->db->mutex) );

  /* Set nByte to the number of bytes required to store the expanded blob. */
  nByte = pMem->n + pMem->u.nZero;
  if( nByte<=0 ){
    if( (pMem->flags & MEM_Blob)==0 ) return SQLITE_OK;
    nByte = 1;
  }
  if( FUNC3(pMem, nByte, 1) ){
    return SQLITE_NOMEM_BKPT;
  }

  FUNC2(&pMem->z[pMem->n], 0, pMem->u.nZero);
  pMem->n += pMem->u.nZero;
  pMem->flags &= ~(MEM_Zero|MEM_Term);
  return SQLITE_OK;
}