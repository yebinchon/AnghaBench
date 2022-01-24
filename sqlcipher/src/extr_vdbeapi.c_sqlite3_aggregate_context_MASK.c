#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_4__* pMem; TYPE_3__* pOut; TYPE_1__* pFunc; } ;
typedef  TYPE_5__ sqlite3_context ;
struct TYPE_11__ {int flags; scalar_t__ z; } ;
struct TYPE_10__ {TYPE_2__* db; } ;
struct TYPE_9__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_8__ {scalar_t__ xFinalize; } ;

/* Variables and functions */
 int MEM_Agg ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (TYPE_5__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void *FUNC4(sqlite3_context *p, int nByte){
  FUNC0( p && p->pFunc && p->pFunc->xFinalize );
  FUNC0( FUNC2(p->pOut->db->mutex) );
  FUNC3( nByte<0 );
  if( (p->pMem->flags & MEM_Agg)==0 ){
    return FUNC1(p, nByte);
  }else{
    return (void*)p->pMem->z;
  }
}