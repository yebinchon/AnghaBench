#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {scalar_t__ busy; int /*<<< orphan*/  imposterTable; } ;
struct TYPE_25__ {TYPE_3__ init; scalar_t__ mallocFailed; } ;
typedef  TYPE_4__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
typedef  int /*<<< orphan*/  Token ;
struct TYPE_26__ {int nCol; size_t iPKey; scalar_t__ tnum; TYPE_7__* pIndex; int /*<<< orphan*/  keyConf; TYPE_1__* aCol; } ;
typedef  TYPE_5__ Table ;
struct TYPE_29__ {TYPE_2__* a; } ;
struct TYPE_28__ {int nKeyCol; int* aiColumn; int nColumn; int isCovering; int uniqNotNull; scalar_t__ tnum; int /*<<< orphan*/ * azColl; struct TYPE_28__* pNext; } ;
struct TYPE_27__ {scalar_t__ nErr; TYPE_5__* pNewTable; int /*<<< orphan*/  iPkSortOrder; scalar_t__ addrCrTab; int /*<<< orphan*/ * pVdbe; TYPE_4__* db; } ;
struct TYPE_23__ {int /*<<< orphan*/  sortOrder; } ;
struct TYPE_22__ {int colFlags; int /*<<< orphan*/  zName; int /*<<< orphan*/  notNull; } ;
typedef  TYPE_6__ Parse ;
typedef  TYPE_7__ Index ;
typedef  TYPE_8__ ExprList ;

/* Variables and functions */
 int /*<<< orphan*/  BTREE_BLOBKEY ; 
 int COLFLAG_PRIMKEY ; 
 scalar_t__ FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  OE_Abort ; 
 int /*<<< orphan*/  OP_Goto ; 
 int /*<<< orphan*/  SQLITE_IDXTYPE_PRIMARYKEY ; 
 int /*<<< orphan*/  TK_ID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  sqlite3StrBINARY ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(Parse *pParse, Table *pTab){
  Index *pIdx;
  Index *pPk;
  int nPk;
  int i, j;
  sqlite3 *db = pParse->db;
  Vdbe *v = pParse->pVdbe;

  /* Mark every PRIMARY KEY column as NOT NULL (except for imposter tables)
  */
  if( !db->init.imposterTable ){
    for(i=0; i<pTab->nCol; i++){
      if( (pTab->aCol[i].colFlags & COLFLAG_PRIMKEY)!=0 ){
        pTab->aCol[i].notNull = OE_Abort;
      }
    }
  }

  /* Convert the P3 operand of the OP_CreateBtree opcode from BTREE_INTKEY
  ** into BTREE_BLOBKEY.
  */
  if( pParse->addrCrTab ){
    FUNC1( *v );
    FUNC11(v, pParse->addrCrTab, BTREE_BLOBKEY);
  }

  /* Locate the PRIMARY KEY index.  Or, if this table was originally
  ** an INTEGER PRIMARY KEY table, create a new PRIMARY KEY index. 
  */
  if( pTab->iPKey>=0 ){
    ExprList *pList;
    Token ipkToken;
    FUNC9(&ipkToken, pTab->aCol[pTab->iPKey].zName);
    pList = FUNC7(pParse, 0, 
                  FUNC6(db, TK_ID, &ipkToken, 0));
    if( pList==0 ) return;
    pList->a[0].sortOrder = pParse->iPkSortOrder;
    FUNC1( pParse->pNewTable==pTab );
    FUNC5(pParse, 0, 0, 0, pList, pTab->keyConf, 0, 0, 0, 0,
                       SQLITE_IDXTYPE_PRIMARYKEY);
    if( db->mallocFailed || pParse->nErr ) return;
    pPk = FUNC8(pTab);
    pTab->iPKey = -1;
  }else{
    pPk = FUNC8(pTab);
    FUNC1( pPk!=0 );

    /*
    ** Remove all redundant columns from the PRIMARY KEY.  For example, change
    ** "PRIMARY KEY(a,b,a,b,c,b,c,d)" into just "PRIMARY KEY(a,b,c,d)".  Later
    ** code assumes the PRIMARY KEY contains no repeated columns.
    */
    for(i=j=1; i<pPk->nKeyCol; i++){
      if( FUNC2(pPk->aiColumn, j, pPk->aiColumn[i]) ){
        pPk->nColumn--;
      }else{
        pPk->aiColumn[j++] = pPk->aiColumn[i];
      }
    }
    pPk->nKeyCol = j;
  }
  FUNC1( pPk!=0 );
  pPk->isCovering = 1;
  if( !db->init.imposterTable ) pPk->uniqNotNull = 1;
  nPk = pPk->nKeyCol;

  /* Bypass the creation of the PRIMARY KEY btree and the sqlite_master
  ** table entry. This is only required if currently generating VDBE
  ** code for a CREATE TABLE (not when parsing one as part of reading
  ** a database schema).  */
  if( v && pPk->tnum>0 ){
    FUNC1( db->init.busy==0 );
    FUNC10(v, pPk->tnum, OP_Goto);
  }

  /* The root page of the PRIMARY KEY is the table root page */
  pPk->tnum = pTab->tnum;

  /* Update the in-memory representation of all UNIQUE indices by converting
  ** the final rowid column into one or more columns of the PRIMARY KEY.
  */
  for(pIdx=pTab->pIndex; pIdx; pIdx=pIdx->pNext){
    int n;
    if( FUNC0(pIdx) ) continue;
    for(i=n=0; i<nPk; i++){
      if( !FUNC2(pIdx->aiColumn, pIdx->nKeyCol, pPk->aiColumn[i]) ) n++;
    }
    if( n==0 ){
      /* This index is a superset of the primary key */
      pIdx->nColumn = pIdx->nKeyCol;
      continue;
    }
    if( FUNC4(db, pIdx, pIdx->nKeyCol+n) ) return;
    for(i=0, j=pIdx->nKeyCol; i<nPk; i++){
      if( !FUNC2(pIdx->aiColumn, pIdx->nKeyCol, pPk->aiColumn[i]) ){
        pIdx->aiColumn[j] = pPk->aiColumn[i];
        pIdx->azColl[j] = pPk->azColl[i];
        j++;
      }
    }
    FUNC1( pIdx->nColumn>=pIdx->nKeyCol+n );
    FUNC1( pIdx->nColumn>=j );
  }

  /* Add all table columns to the PRIMARY KEY index
  */
  if( nPk<pTab->nCol ){
    if( FUNC4(db, pPk, pTab->nCol) ) return;
    for(i=0, j=nPk; i<pTab->nCol; i++){
      if( !FUNC2(pPk->aiColumn, j, i) ){
        FUNC1( j<pPk->nColumn );
        pPk->aiColumn[j] = i;
        pPk->azColl[j] = sqlite3StrBINARY;
        j++;
      }
    }
    FUNC1( pPk->nColumn==j );
    FUNC1( pTab->nCol==j );
  }else{
    pPk->nColumn = pTab->nCol;
  }
  FUNC3(pPk);
}