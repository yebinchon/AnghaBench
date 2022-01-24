#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int mallocFailed; TYPE_1__* aDb; } ;
typedef  TYPE_2__ sqlite3 ;
struct TYPE_26__ {scalar_t__ addColOffset; int nTabRef; int nCol; int /*<<< orphan*/  pSchema; TYPE_6__* aCol; int /*<<< orphan*/  zName; scalar_t__ pSelect; } ;
typedef  TYPE_3__ Table ;
struct TYPE_29__ {scalar_t__ pDflt; scalar_t__ zColl; int /*<<< orphan*/  zName; } ;
struct TYPE_28__ {TYPE_3__* pNewTable; TYPE_2__* db; } ;
struct TYPE_27__ {int /*<<< orphan*/ * a; } ;
struct TYPE_24__ {int /*<<< orphan*/  pSchema; } ;
typedef  TYPE_4__ SrcList ;
typedef  TYPE_5__ Parse ;
typedef  TYPE_6__ Column ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_6__*,int) ; 
 int FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char*) ; 
 TYPE_3__* FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_4__*) ; 

void FUNC12(Parse *pParse, SrcList *pSrc){
  Table *pNew;
  Table *pTab;
  int iDb;
  int i;
  int nAlloc;
  sqlite3 *db = pParse->db;

  /* Look up the table being altered. */
  FUNC1( pParse->pNewTable==0 );
  FUNC1( FUNC4(db) );
  if( db->mallocFailed ) goto exit_begin_add_column;
  pTab = FUNC8(pParse, 0, &pSrc->a[0]);
  if( !pTab ) goto exit_begin_add_column;

#ifndef SQLITE_OMIT_VIRTUALTABLE
  if( FUNC0(pTab) ){
    FUNC7(pParse, "virtual tables may not be altered");
    goto exit_begin_add_column;
  }
#endif

  /* Make sure this is not an attempt to ALTER a view. */
  if( pTab->pSelect ){
    FUNC7(pParse, "Cannot add a column to a view");
    goto exit_begin_add_column;
  }
  if( SQLITE_OK!=FUNC2(pParse, pTab) ){
    goto exit_begin_add_column;
  }

  FUNC1( pTab->addColOffset>0 );
  iDb = FUNC10(db, pTab->pSchema);

  /* Put a copy of the Table struct in Parse.pNewTable for the
  ** sqlite3AddColumn() function and friends to modify.  But modify
  ** the name by adding an "sqlite_altertab_" prefix.  By adding this
  ** prefix, we insure that the name will not collide with an existing
  ** table because user table are not allowed to have the "sqlite_"
  ** prefix on their name.
  */
  pNew = (Table*)FUNC5(db, sizeof(Table));
  if( !pNew ) goto exit_begin_add_column;
  pParse->pNewTable = pNew;
  pNew->nTabRef = 1;
  pNew->nCol = pTab->nCol;
  FUNC1( pNew->nCol>0 );
  nAlloc = (((pNew->nCol-1)/8)*8)+8;
  FUNC1( nAlloc>=pNew->nCol && nAlloc%8==0 && nAlloc-pNew->nCol<8 );
  pNew->aCol = (Column*)FUNC5(db, sizeof(Column)*nAlloc);
  pNew->zName = FUNC9(db, "sqlite_altertab_%s", pTab->zName);
  if( !pNew->aCol || !pNew->zName ){
    FUNC1( db->mallocFailed );
    goto exit_begin_add_column;
  }
  FUNC3(pNew->aCol, pTab->aCol, sizeof(Column)*pNew->nCol);
  for(i=0; i<pNew->nCol; i++){
    Column *pCol = &pNew->aCol[i];
    pCol->zName = FUNC6(db, pCol->zName);
    pCol->zColl = 0;
    pCol->pDflt = 0;
  }
  pNew->pSchema = db->aDb[iDb].pSchema;
  pNew->addColOffset = pTab->addColOffset;
  pNew->nTabRef = 1;

exit_begin_add_column:
  FUNC11(db, pSrc);
  return;
}