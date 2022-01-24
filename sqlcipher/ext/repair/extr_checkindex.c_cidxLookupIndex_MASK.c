#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_8__ {scalar_t__ bKey; scalar_t__ zExpr; void* bDesc; } ;
struct TYPE_7__ {int nCol; scalar_t__ zWhere; TYPE_2__* aCol; } ;
typedef  TYPE_1__ CidxIndex ;
typedef  int /*<<< orphan*/  CidxCursor ;
typedef  TYPE_2__ CidxColumn ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int*,char*,char const*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int*,int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC5 (int*,char const*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(
  CidxCursor *pCsr,               /* Cursor object */
  const char *zIdx,               /* Name of index to look up */
  CidxIndex **ppIdx,              /* OUT: Description of columns */
  char **pzTab                    /* OUT: Table name */
){
  int rc = SQLITE_OK;
  char *zTab = 0;
  CidxIndex *pIdx = 0;

  sqlite3_stmt *pFindTab = 0;
  sqlite3_stmt *pInfo = 0;
    
  /* Find the table for this index. */
  pFindTab = FUNC4(&rc, pCsr, 
      "SELECT tbl_name, sql FROM sqlite_master WHERE name=%Q AND type='index'",
      zIdx
  );
  if( rc==SQLITE_OK && FUNC10(pFindTab)==SQLITE_ROW ){
    const char *zSql = (const char*)FUNC7(pFindTab, 1);
    zTab = FUNC5(&rc, (const char*)FUNC7(pFindTab, 0));

    pInfo = FUNC4(&rc, pCsr, "PRAGMA index_xinfo(%Q)", zIdx);
    if( rc==SQLITE_OK ){
      int nAlloc = 0;
      int iCol = 0;

      while( FUNC10(pInfo)==SQLITE_ROW ){
        const char *zName = (const char*)FUNC7(pInfo, 2);
        const char *zColl = (const char*)FUNC7(pInfo, 4);
        CidxColumn *p;
        if( zName==0 ) zName = "rowid";
        if( iCol==nAlloc ){
          int nByte = sizeof(CidxIndex) + sizeof(CidxColumn)*(nAlloc+8);
          pIdx = (CidxIndex*)FUNC9(pIdx, nByte);
          nAlloc += 8;
        }
        p = &pIdx->aCol[iCol++];
        p->bDesc = FUNC6(pInfo, 3);
        p->bKey = FUNC6(pInfo, 5);
        if( zSql==0 || p->bKey==0 ){
          p->zExpr = FUNC2(&rc, "\"%w\" COLLATE %s",zName,zColl);
        }else{
          p->zExpr = 0;
        }
        pIdx->nCol = iCol;
        pIdx->zWhere = 0;
      }
      FUNC0(&rc, pInfo);
    }

    if( rc==SQLITE_OK && zSql ){
      rc = FUNC3(pCsr, pIdx, zSql);
    }
  }

  FUNC0(&rc, pFindTab);
  if( rc==SQLITE_OK && zTab==0 ){
    rc = SQLITE_ERROR;
  }
  
  if( rc!=SQLITE_OK ){
    FUNC8(zTab);
    FUNC1(pIdx);
  }else{
    *pzTab = zTab;
    *ppIdx = pIdx;
  }

  return rc;
}