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
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_8__ {int /*<<< orphan*/  r; int /*<<< orphan*/  i; } ;
struct TYPE_9__ {int flags; scalar_t__ n; scalar_t__ z; TYPE_2__ u; TYPE_1__* db; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_3__ Mem ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int MEM_Blob ; 
 int MEM_Int ; 
 int MEM_Real ; 
 int MEM_Str ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

i64 FUNC5(Mem *pMem){
  int flags;
  FUNC1( pMem->db==0 || FUNC4(pMem->db->mutex) );
  FUNC1( FUNC0(pMem) );
  flags = pMem->flags;
  if( flags & MEM_Int ){
    return pMem->u.i;
  }else if( flags & MEM_Real ){
    return FUNC2(pMem->u.r);
  }else if( flags & (MEM_Str|MEM_Blob) ){
    FUNC1( pMem->z || pMem->n==0 );
    return FUNC3(pMem);
  }else{
    return 0;
  }
}