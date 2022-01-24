#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  sqlite3_value ;
struct TYPE_7__ {TYPE_6__* db; TYPE_2__* aVar; } ;
typedef  TYPE_1__ Vdbe ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int flags; } ;
typedef  TYPE_2__ Mem ;

/* Variables and functions */
 int MEM_Null ; 
 int SQLITE_EnableQPSG ; 
 int /*<<< orphan*/  SQLITE_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 

sqlite3_value *FUNC4(Vdbe *v, int iVar, u8 aff){
  FUNC0( iVar>0 );
  if( v ){
    Mem *pMem = &v->aVar[iVar-1];
    FUNC0( (v->db->flags & SQLITE_EnableQPSG)==0 );
    if( 0==(pMem->flags & MEM_Null) ){
      sqlite3_value *pRet = FUNC2(v->db);
      if( pRet ){
        FUNC3((Mem *)pRet, pMem);
        FUNC1(pRet, aff, SQLITE_UTF8);
      }
      return pRet;
    }
  }
  return 0;
}