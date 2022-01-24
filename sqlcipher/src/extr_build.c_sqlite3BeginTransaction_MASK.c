#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int nDb; } ;
typedef  TYPE_1__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_7__ {TYPE_1__* db; } ;
typedef  TYPE_2__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  OP_AutoCommit ; 
 int /*<<< orphan*/  OP_Transaction ; 
 int /*<<< orphan*/  SQLITE_TRANSACTION ; 
 int TK_DEFERRED ; 
 int TK_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

void FUNC6(Parse *pParse, int type){
  sqlite3 *db;
  Vdbe *v;
  int i;

  FUNC0( pParse!=0 );
  db = pParse->db;
  FUNC0( db!=0 );
  if( FUNC1(pParse, SQLITE_TRANSACTION, "BEGIN", 0, 0) ){
    return;
  }
  v = FUNC2(pParse);
  if( !v ) return;
  if( type!=TK_DEFERRED ){
    for(i=0; i<db->nDb; i++){
      FUNC4(v, OP_Transaction, i, (type==TK_EXCLUSIVE)+1);
      FUNC5(v, i);
    }
  }
  FUNC3(v, OP_AutoCommit);
}