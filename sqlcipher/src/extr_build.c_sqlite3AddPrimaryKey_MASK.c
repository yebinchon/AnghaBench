#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_21__ {int tabFlags; int nCol; int iPKey; scalar_t__ keyConf; TYPE_7__* aCol; int /*<<< orphan*/  zName; } ;
typedef  TYPE_3__ Table ;
struct TYPE_25__ {char* zName; int /*<<< orphan*/  colFlags; } ;
struct TYPE_19__ {char* zToken; } ;
struct TYPE_24__ {scalar_t__ op; TYPE_1__ u; } ;
struct TYPE_23__ {int nExpr; TYPE_2__* a; } ;
struct TYPE_22__ {int /*<<< orphan*/  db; int /*<<< orphan*/  iPkSortOrder; TYPE_3__* pNewTable; } ;
struct TYPE_20__ {int /*<<< orphan*/  sortOrder; int /*<<< orphan*/  pExpr; } ;
typedef  TYPE_4__ Parse ;
typedef  TYPE_5__ ExprList ;
typedef  TYPE_6__ Expr ;
typedef  TYPE_7__ Column ;

/* Variables and functions */
 int /*<<< orphan*/  COLFLAG_PRIMKEY ; 
 scalar_t__ IN_RENAME_OBJECT ; 
 int /*<<< orphan*/  SQLITE_IDXTYPE_PRIMARYKEY ; 
 int SQLITE_SO_DESC ; 
 int TF_Autoincrement ; 
 int TF_HasPrimaryKey ; 
 scalar_t__ TK_ID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char const* FUNC1 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 TYPE_6__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int*,TYPE_6__*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 

void FUNC9(
  Parse *pParse,    /* Parsing context */
  ExprList *pList,  /* List of field names to be indexed */
  int onError,      /* What to do with a uniqueness conflict */
  int autoInc,      /* True if the AUTOINCREMENT keyword is present */
  int sortOrder     /* SQLITE_SO_ASC or SQLITE_SO_DESC */
){
  Table *pTab = pParse->pNewTable;
  Column *pCol = 0;
  int iCol = -1, i;
  int nTerm;
  if( pTab==0 ) goto primary_key_exit;
  if( pTab->tabFlags & TF_HasPrimaryKey ){
    FUNC3(pParse, 
      "table \"%s\" has more than one primary key", pTab->zName);
    goto primary_key_exit;
  }
  pTab->tabFlags |= TF_HasPrimaryKey;
  if( pList==0 ){
    iCol = pTab->nCol - 1;
    pCol = &pTab->aCol[iCol];
    pCol->colFlags |= COLFLAG_PRIMKEY;
    nTerm = 1;
  }else{
    nTerm = pList->nExpr;
    for(i=0; i<nTerm; i++){
      Expr *pCExpr = FUNC5(pList->a[i].pExpr);
      FUNC0( pCExpr!=0 );
      FUNC8(pCExpr);
      if( pCExpr->op==TK_ID ){
        const char *zCName = pCExpr->u.zToken;
        for(iCol=0; iCol<pTab->nCol; iCol++){
          if( FUNC7(zCName, pTab->aCol[iCol].zName)==0 ){
            pCol = &pTab->aCol[iCol];
            pCol->colFlags |= COLFLAG_PRIMKEY;
            break;
          }
        }
      }
    }
  }
  if( nTerm==1
   && pCol
   && FUNC7(FUNC1(pCol,""), "INTEGER")==0
   && sortOrder!=SQLITE_SO_DESC
  ){
    if( IN_RENAME_OBJECT && pList ){
      Expr *pCExpr = FUNC5(pList->a[0].pExpr);
      FUNC6(pParse, &pTab->iPKey, pCExpr);
    }
    pTab->iPKey = iCol;
    pTab->keyConf = (u8)onError;
    FUNC0( autoInc==0 || autoInc==1 );
    pTab->tabFlags |= autoInc*TF_Autoincrement;
    if( pList ) pParse->iPkSortOrder = pList->a[0].sortOrder;
  }else if( autoInc ){
#ifndef SQLITE_OMIT_AUTOINCREMENT
    FUNC3(pParse, "AUTOINCREMENT is only allowed on an "
       "INTEGER PRIMARY KEY");
#endif
  }else{
    FUNC2(pParse, 0, 0, 0, pList, onError, 0,
                           0, sortOrder, 0, SQLITE_IDXTYPE_PRIMARYKEY);
    pList = 0;
  }

primary_key_exit:
  FUNC4(pParse->db, pList);
  return;
}