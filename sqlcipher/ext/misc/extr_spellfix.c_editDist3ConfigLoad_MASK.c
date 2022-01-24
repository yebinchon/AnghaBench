#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  scalar_t__ u16 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_13__ {int nLang; TYPE_1__* a; } ;
struct TYPE_12__ {struct TYPE_12__* pNext; scalar_t__ a; scalar_t__ iCost; void* nTo; void* nFrom; } ;
struct TYPE_11__ {int iLang; int iInsCost; int iDelCost; int iSubCost; TYPE_2__* pCost; } ;
typedef  TYPE_1__ EditDist3Lang ;
typedef  TYPE_2__ EditDist3Cost ;
typedef  TYPE_3__ EditDist3Config ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_2__* FUNC9 (int) ; 
 char* FUNC10 (char*,char const*) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (TYPE_1__*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(
  EditDist3Config *p,      /* The edit distance configuration to load */
  sqlite3 *db,            /* Load from this database */
  const char *zTable      /* Name of the table from which to load */
){
  sqlite3_stmt *pStmt;
  int rc, rc2;
  char *zSql;
  int iLangPrev = -9999;
  EditDist3Lang *pLang = 0;

  zSql = FUNC10("SELECT iLang, cFrom, cTo, iCost"
                         " FROM \"%w\" WHERE iLang>=0 ORDER BY iLang", zTable);
  if( zSql==0 ) return SQLITE_NOMEM;
  rc = FUNC11(db, zSql, -1, &pStmt, 0);
  FUNC8(zSql);
  if( rc ) return rc;
  FUNC1(p);
  while( FUNC13(pStmt)==SQLITE_ROW ){
    int iLang = FUNC5(pStmt, 0);
    const char *zFrom = (const char*)FUNC6(pStmt, 1);
    int nFrom = zFrom ? FUNC4(pStmt, 1) : 0;
    const char *zTo = (const char*)FUNC6(pStmt, 2);
    int nTo = zTo ? FUNC4(pStmt, 2) : 0;
    int iCost = FUNC5(pStmt, 3);

    FUNC0( zFrom!=0 || nFrom==0 );
    FUNC0( zTo!=0 || nTo==0 );
    if( nFrom>100 || nTo>100 ) continue;
    if( iCost<0 ) continue;
    if( iCost>=10000 ) continue;  /* Costs above 10K are considered infinite */
    if( pLang==0 || iLang!=iLangPrev ){
      EditDist3Lang *pNew;
      pNew = FUNC12(p->a, (p->nLang+1)*sizeof(p->a[0]));
      if( pNew==0 ){ rc = SQLITE_NOMEM; break; }
      p->a = pNew;
      pLang = &p->a[p->nLang];
      p->nLang++;
      pLang->iLang = iLang;
      pLang->iInsCost = 100;
      pLang->iDelCost = 100;
      pLang->iSubCost = 150;
      pLang->pCost = 0;
      iLangPrev = iLang;
    }
    if( nFrom==1 && zFrom[0]=='?' && nTo==0 ){
      pLang->iDelCost = iCost;
    }else if( nFrom==0 && nTo==1 && zTo[0]=='?' ){
      pLang->iInsCost = iCost;
    }else if( nFrom==1 && nTo==1 && zFrom[0]=='?' && zTo[0]=='?' ){
      pLang->iSubCost = iCost;
    }else{
      EditDist3Cost *pCost;
      int nExtra = nFrom + nTo - 4;
      if( nExtra<0 ) nExtra = 0;
      pCost = FUNC9( sizeof(*pCost) + nExtra );
      if( pCost==0 ){ rc = SQLITE_NOMEM; break; }
      pCost->nFrom = (u8)nFrom;
      pCost->nTo = (u8)nTo;
      pCost->iCost = (u16)iCost;
      FUNC3(pCost->a, zFrom, nFrom);
      FUNC3(pCost->a + nFrom, zTo, nTo);
      pCost->pNext = pLang->pCost;
      pLang->pCost = pCost; 
    }
  }
  rc2 = FUNC7(pStmt);
  if( rc==SQLITE_OK ) rc = rc2;
  if( rc==SQLITE_OK ){
    int iLang;
    for(iLang=0; iLang<p->nLang; iLang++){
      p->a[iLang].pCost = FUNC2(p->a[iLang].pCost);
    }
  }
  return rc;
}