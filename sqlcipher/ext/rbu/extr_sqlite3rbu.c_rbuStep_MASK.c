#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ zIdx; int nCol; size_t* aiSrcOrder; scalar_t__ eType; int /*<<< orphan*/  pSelect; scalar_t__* abTblPk; scalar_t__ nIndex; } ;
struct TYPE_9__ {scalar_t__ rc; int /*<<< orphan*/  zErrmsg; TYPE_2__ objiter; int /*<<< orphan*/  nPhaseOneStep; } ;
typedef  TYPE_1__ sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  TYPE_2__ RbuObjIter ;

/* Variables and functions */
 int RBU_DELETE ; 
 int RBU_IDX_DELETE ; 
 int RBU_IDX_INSERT ; 
 int RBU_INSERT ; 
 scalar_t__ RBU_PK_NONE ; 
 scalar_t__ RBU_PK_VTAB ; 
 int RBU_REPLACE ; 
 int RBU_UPDATE ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*,char const**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(sqlite3rbu *p){
  RbuObjIter *pIter = &p->objiter;
  const char *zMask = 0;
  int eType = FUNC5(p, &zMask);

  if( eType ){
    FUNC0( eType==RBU_INSERT     || eType==RBU_DELETE
         || eType==RBU_REPLACE    || eType==RBU_IDX_DELETE
         || eType==RBU_IDX_INSERT || eType==RBU_UPDATE
    );
    FUNC0( eType!=RBU_UPDATE || pIter->zIdx==0 );

    if( pIter->zIdx==0 && (eType==RBU_IDX_DELETE || eType==RBU_IDX_INSERT) ){
      FUNC2(p);
    }
    else if( eType==RBU_REPLACE ){
      if( pIter->zIdx==0 ){
        p->nPhaseOneStep += p->objiter.nIndex;
        FUNC4(p, RBU_DELETE);
      }
      if( p->rc==SQLITE_OK ) FUNC4(p, RBU_INSERT);
    }
    else if( eType!=RBU_UPDATE ){
      FUNC4(p, eType);
    }
    else{
      sqlite3_value *pVal;
      sqlite3_stmt *pUpdate = 0;
      FUNC0( eType==RBU_UPDATE );
      p->nPhaseOneStep -= p->objiter.nIndex;
      FUNC3(p, pIter, zMask, &pUpdate);
      if( pUpdate ){
        int i;
        for(i=0; p->rc==SQLITE_OK && i<pIter->nCol; i++){
          char c = zMask[pIter->aiSrcOrder[i]];
          pVal = FUNC8(pIter->pSelect, i);
          if( pIter->abTblPk[i] || c!='.' ){
            p->rc = FUNC7(pUpdate, i+1, pVal);
          }
        }
        if( p->rc==SQLITE_OK 
         && (pIter->eType==RBU_PK_VTAB || pIter->eType==RBU_PK_NONE) 
        ){
          /* Bind the rbu_rowid value to column _rowid_ */
          FUNC1(pIter->pSelect, pIter->nCol+1, "rbu_rowid");
          pVal = FUNC8(pIter->pSelect, pIter->nCol+1);
          p->rc = FUNC7(pUpdate, pIter->nCol+1, pVal);
        }
        if( p->rc==SQLITE_OK ){
          FUNC9(pUpdate);
          p->rc = FUNC6(pUpdate, &p->zErrmsg);
        }
      }
    }
  }
  return p->rc;
}