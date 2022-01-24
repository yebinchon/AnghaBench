#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ zIdx; int nCol; scalar_t__ eType; scalar_t__* abTblPk; int /*<<< orphan*/  pSelect; int /*<<< orphan*/ * pInsert; int /*<<< orphan*/ * pDelete; scalar_t__ nIndex; } ;
struct TYPE_5__ {int /*<<< orphan*/  zErrmsg; void* rc; TYPE_2__ objiter; int /*<<< orphan*/  nPhaseOneStep; } ;
typedef  TYPE_1__ sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  TYPE_2__ RbuObjIter ;

/* Variables and functions */
 int RBU_DELETE ; 
 int RBU_IDX_DELETE ; 
 int RBU_IDX_INSERT ; 
 int RBU_INSERT ; 
 scalar_t__ RBU_PK_EXTERNAL ; 
 scalar_t__ RBU_PK_IPK ; 
 scalar_t__ RBU_PK_NONE ; 
 scalar_t__ RBU_PK_VTAB ; 
 void* SQLITE_MISMATCH ; 
 scalar_t__ SQLITE_NULL ; 
 void* SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(sqlite3rbu *p, int eType){
  RbuObjIter *pIter = &p->objiter;
  sqlite3_value *pVal;
  sqlite3_stmt *pWriter;
  int i;

  FUNC0( p->rc==SQLITE_OK );
  FUNC0( eType!=RBU_DELETE || pIter->zIdx==0 );
  FUNC0( eType==RBU_DELETE || eType==RBU_IDX_DELETE
       || eType==RBU_INSERT || eType==RBU_IDX_INSERT
  );

  /* If this is a delete, decrement nPhaseOneStep by nIndex. If the DELETE
  ** statement below does actually delete a row, nPhaseOneStep will be
  ** incremented by the same amount when SQL function rbu_tmp_insert()
  ** is invoked by the trigger.  */
  if( eType==RBU_DELETE ){
    p->nPhaseOneStep -= p->objiter.nIndex;
  }

  if( eType==RBU_IDX_DELETE || eType==RBU_DELETE ){
    pWriter = pIter->pDelete;
  }else{
    pWriter = pIter->pInsert;
  }

  for(i=0; i<pIter->nCol; i++){
    /* If this is an INSERT into a table b-tree and the table has an
    ** explicit INTEGER PRIMARY KEY, check that this is not an attempt
    ** to write a NULL into the IPK column. That is not permitted.  */
    if( eType==RBU_INSERT 
     && pIter->zIdx==0 && pIter->eType==RBU_PK_IPK && pIter->abTblPk[i] 
     && FUNC5(pIter->pSelect, i)==SQLITE_NULL
    ){
      p->rc = SQLITE_MISMATCH;
      p->zErrmsg = FUNC7("datatype mismatch");
      return;
    }

    if( eType==RBU_DELETE && pIter->abTblPk[i]==0 ){
      continue;
    }

    pVal = FUNC6(pIter->pSelect, i);
    p->rc = FUNC4(pWriter, i+1, pVal);
    if( p->rc ) return;
  }
  if( pIter->zIdx==0 ){
    if( pIter->eType==RBU_PK_VTAB 
     || pIter->eType==RBU_PK_NONE 
     || (pIter->eType==RBU_PK_EXTERNAL && FUNC2(p)) 
    ){
      /* For a virtual table, or a table with no primary key, the 
      ** SELECT statement is:
      **
      **   SELECT <cols>, rbu_control, rbu_rowid FROM ....
      **
      ** Hence column_value(pIter->nCol+1).
      */
      FUNC1(pIter->pSelect, pIter->nCol+1, 
          FUNC2(p) ? "rowid" : "rbu_rowid"
      );
      pVal = FUNC6(pIter->pSelect, pIter->nCol+1);
      p->rc = FUNC4(pWriter, pIter->nCol+1, pVal);
    }
  }
  if( p->rc==SQLITE_OK ){
    FUNC8(pWriter);
    p->rc = FUNC3(pWriter, &p->zErrmsg);
  }
}