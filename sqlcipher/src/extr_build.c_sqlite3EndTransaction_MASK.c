#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_5__ {scalar_t__ db; } ;
typedef  TYPE_1__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  OP_AutoCommit ; 
 int /*<<< orphan*/  SQLITE_TRANSACTION ; 
 int TK_COMMIT ; 
 int TK_END ; 
 int TK_ROLLBACK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

void FUNC4(Parse *pParse, int eType){
  Vdbe *v;
  int isRollback;

  FUNC0( pParse!=0 );
  FUNC0( pParse->db!=0 );
  FUNC0( eType==TK_COMMIT || eType==TK_END || eType==TK_ROLLBACK );
  isRollback = eType==TK_ROLLBACK;
  if( FUNC1(pParse, SQLITE_TRANSACTION, 
       isRollback ? "ROLLBACK" : "COMMIT", 0, 0) ){
    return;
  }
  v = FUNC2(pParse);
  if( v ){
    FUNC3(v, OP_AutoCommit, 1, isRollback);
  }
}