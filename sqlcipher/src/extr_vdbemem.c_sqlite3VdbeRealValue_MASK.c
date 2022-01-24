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
struct TYPE_8__ {double r; scalar_t__ i; } ;
struct TYPE_9__ {int flags; TYPE_2__ u; TYPE_1__* db; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_3__ Mem ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int MEM_Blob ; 
 int MEM_Int ; 
 int MEM_Real ; 
 int MEM_Str ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 double FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

double FUNC4(Mem *pMem){
  FUNC1( pMem->db==0 || FUNC3(pMem->db->mutex) );
  FUNC1( FUNC0(pMem) );
  if( pMem->flags & MEM_Real ){
    return pMem->u.r;
  }else if( pMem->flags & MEM_Int ){
    return (double)pMem->u.i;
  }else if( pMem->flags & (MEM_Str|MEM_Blob) ){
    return FUNC2(pMem);
  }else{
    /* (double)0 In case of SQLITE_OMIT_FLOATING_POINT... */
    return (double)0;
  }
}