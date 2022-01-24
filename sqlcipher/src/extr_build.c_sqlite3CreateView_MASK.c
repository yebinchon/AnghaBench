#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_28__ {char* z; int n; } ;
typedef  TYPE_2__ Token ;
struct TYPE_29__ {int /*<<< orphan*/  pCheck; int /*<<< orphan*/ * pSelect; int /*<<< orphan*/  pSchema; } ;
typedef  TYPE_3__ Table ;
struct TYPE_30__ {scalar_t__ nVar; TYPE_2__ sLastToken; scalar_t__ nErr; TYPE_3__* pNewTable; TYPE_1__* db; } ;
typedef  int /*<<< orphan*/  Select ;
typedef  TYPE_4__ Parse ;
typedef  int /*<<< orphan*/  ExprList ;
typedef  int /*<<< orphan*/  DbFixer ;

/* Variables and functions */
 int /*<<< orphan*/  EXPRDUP_REDUCE ; 
 scalar_t__ IN_RENAME_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,int,char*,TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,TYPE_2__*,TYPE_2__*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,TYPE_2__*,TYPE_2__*,TYPE_2__**) ; 

void FUNC14(
  Parse *pParse,     /* The parsing context */
  Token *pBegin,     /* The CREATE token that begins the statement */
  Token *pName1,     /* The token that holds the name of the view */
  Token *pName2,     /* The token that holds the name of the view */
  ExprList *pCNames, /* Optional list of view column names */
  Select *pSelect,   /* A SELECT statement that will become the new view */
  int isTemp,        /* TRUE for a TEMPORARY view */
  int noErr          /* Suppress error messages if VIEW already exists */
){
  Table *p;
  int n;
  const char *z;
  Token sEnd;
  DbFixer sFix;
  Token *pName = 0;
  int iDb;
  sqlite3 *db = pParse->db;

  if( pParse->nVar>0 ){
    FUNC2(pParse, "parameters are not allowed in views");
    goto create_view_fail;
  }
  FUNC12(pParse, pName1, pName2, isTemp, 1, 0, noErr);
  p = pParse->pNewTable;
  if( p==0 || pParse->nErr ) goto create_view_fail;
  FUNC13(pParse, pName1, pName2, &pName);
  iDb = FUNC9(db, p->pSchema);
  FUNC5(&sFix, pParse, iDb, "view", pName);
  if( FUNC6(&sFix, pSelect) ) goto create_view_fail;

  /* Make a copy of the entire SELECT statement that defines the view.
  ** This will force all the Expr.token.z values to be dynamically
  ** allocated rather than point to the input string - which means that
  ** they will persist after the current sqlite3_exec() call returns.
  */
  if( IN_RENAME_OBJECT ){
    p->pSelect = pSelect;
    pSelect = 0;
  }else{
    p->pSelect = FUNC11(db, pSelect, EXPRDUP_REDUCE);
  }
  p->pCheck = FUNC4(db, pCNames, EXPRDUP_REDUCE);
  if( db->mallocFailed ) goto create_view_fail;

  /* Locate the end of the CREATE VIEW statement.  Make sEnd point to
  ** the end.
  */
  sEnd = pParse->sLastToken;
  FUNC0( sEnd.z[0]!=0 || sEnd.n==0 );
  if( sEnd.z[0]!=';' ){
    sEnd.z += sEnd.n;
  }
  sEnd.n = 0;
  n = (int)(sEnd.z - pBegin->z);
  FUNC0( n>0 );
  z = pBegin->z;
  while( FUNC7(z[n-1]) ){ n--; }
  sEnd.z = &z[n-1];
  sEnd.n = 1;

  /* Use sqlite3EndTable() to add the view to the SQLITE_MASTER table */
  FUNC1(pParse, 0, &sEnd, 0, 0);

create_view_fail:
  FUNC10(db, pSelect);
  if( IN_RENAME_OBJECT ){
    FUNC8(pParse, pCNames);
  }
  FUNC3(db, pCNames);
  return;
}