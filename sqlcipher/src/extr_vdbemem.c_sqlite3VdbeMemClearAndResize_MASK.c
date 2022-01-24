#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; int szMalloc; int /*<<< orphan*/  zMalloc; int /*<<< orphan*/  z; } ;
typedef  TYPE_1__ Mem ;

/* Variables and functions */
 scalar_t__ CORRUPT_DB ; 
 int MEM_Dyn ; 
 int MEM_Int ; 
 int MEM_Null ; 
 int MEM_Real ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

int FUNC2(Mem *pMem, int szNew){
  FUNC0( CORRUPT_DB || szNew>0 );
  FUNC0( (pMem->flags & MEM_Dyn)==0 || pMem->szMalloc==0 );
  if( pMem->szMalloc<szNew ){
    return FUNC1(pMem, szNew, 0);
  }
  FUNC0( (pMem->flags & MEM_Dyn)==0 );
  pMem->z = pMem->zMalloc;
  pMem->flags &= (MEM_Null|MEM_Int|MEM_Real);
  return SQLITE_OK;
}