#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int sqlite3_int64 ;
struct TYPE_19__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_2__ sqlite3 ;
struct TYPE_20__ {int nCte; TYPE_1__* a; } ;
typedef  TYPE_3__ With ;
typedef  int /*<<< orphan*/  Token ;
struct TYPE_21__ {TYPE_2__* db; } ;
struct TYPE_18__ {char* zName; scalar_t__ zCteErr; int /*<<< orphan*/ * pCols; int /*<<< orphan*/ * pSelect; } ;
typedef  int /*<<< orphan*/  Select ;
typedef  TYPE_4__ Parse ;
typedef  int /*<<< orphan*/  ExprList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int) ; 
 TYPE_3__* FUNC3 (TYPE_2__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

With *FUNC9(
  Parse *pParse,          /* Parsing context */
  With *pWith,            /* Existing WITH clause, or NULL */
  Token *pName,           /* Name of the common-table */
  ExprList *pArglist,     /* Optional column name list for the table */
  Select *pQuery          /* Query used to initialize the table */
){
  sqlite3 *db = pParse->db;
  With *pNew;
  char *zName;

  /* Check that the CTE name is unique within this WITH clause. If
  ** not, store an error in the Parse structure. */
  zName = FUNC6(pParse->db, pName);
  if( zName && pWith ){
    int i;
    for(i=0; i<pWith->nCte; i++){
      if( FUNC8(zName, pWith->a[i].zName)==0 ){
        FUNC4(pParse, "duplicate WITH table name: %s", zName);
      }
    }
  }

  if( pWith ){
    sqlite3_int64 nByte = sizeof(*pWith) + (sizeof(pWith->a[1]) * pWith->nCte);
    pNew = FUNC3(db, pWith, nByte);
  }else{
    pNew = FUNC2(db, sizeof(*pWith));
  }
  FUNC0( (pNew!=0 && zName!=0) || db->mallocFailed );

  if( db->mallocFailed ){
    FUNC5(db, pArglist);
    FUNC7(db, pQuery);
    FUNC1(db, zName);
    pNew = pWith;
  }else{
    pNew->a[pNew->nCte].pSelect = pQuery;
    pNew->a[pNew->nCte].pCols = pArglist;
    pNew->a[pNew->nCte].zName = zName;
    pNew->a[pNew->nCte].zCteErr = 0;
    pNew->nCte++;
  }

  return pNew;
}