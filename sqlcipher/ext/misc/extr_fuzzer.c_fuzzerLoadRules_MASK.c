#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_8__ {TYPE_2__* pRule; int /*<<< orphan*/  zClassName; } ;
typedef  TYPE_1__ fuzzer_vtab ;
struct TYPE_9__ {struct TYPE_9__* pNext; } ;
typedef  TYPE_2__ fuzzer_rule ;
typedef  int /*<<< orphan*/  a ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__**,char**) ; 
 void* FUNC2 (TYPE_2__*,TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,char const*,char const*,...) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(
  sqlite3 *db,                    /* Database handle */
  fuzzer_vtab *p,                 /* Virtual fuzzer table to configure */
  const char *zDb,                /* Database containing rules data */
  const char *zData,              /* Table containing rules data */
  char **pzErr                    /* OUT: Error message */
){
  int rc = SQLITE_OK;             /* Return code */
  char *zSql;                     /* SELECT used to read from rules table */
  fuzzer_rule *pHead = 0;

  zSql = FUNC7("SELECT * FROM %Q.%Q", zDb, zData);
  if( zSql==0 ){
    rc = SQLITE_NOMEM;
  }else{
    int rc2;                      /* finalize() return code */
    sqlite3_stmt *pStmt = 0;
    rc = FUNC8(db, zSql, -1, &pStmt, 0);
    if( rc!=SQLITE_OK ){
      *pzErr = FUNC7("%s: %s", p->zClassName, FUNC4(db));
    }else if( FUNC3(pStmt)!=4 ){
      *pzErr = FUNC7("%s: %s has %d columns, expected 4",
          p->zClassName, zData, FUNC3(pStmt)
      );
      rc = SQLITE_ERROR;
    }else{
      while( rc==SQLITE_OK && SQLITE_ROW==FUNC9(pStmt) ){
        fuzzer_rule *pRule = 0;
        rc = FUNC1(p, pStmt, &pRule, pzErr);
        if( pRule ){
          pRule->pNext = pHead;
          pHead = pRule;
        }
      }
    }
    rc2 = FUNC5(pStmt);
    if( rc==SQLITE_OK ) rc = rc2;
  }
  FUNC6(zSql);

  /* All rules are now in a singly linked list starting at pHead. This
  ** block sorts them by cost and then sets fuzzer_vtab.pRule to point to 
  ** point to the head of the sorted list.
  */
  if( rc==SQLITE_OK ){
    unsigned int i;
    fuzzer_rule *pX;
    fuzzer_rule *a[15];
    for(i=0; i<sizeof(a)/sizeof(a[0]); i++) a[i] = 0;
    while( (pX = pHead)!=0 ){
      pHead = pX->pNext;
      pX->pNext = 0;
      for(i=0; a[i] && i<sizeof(a)/sizeof(a[0])-1; i++){
        pX = FUNC2(a[i], pX);
        a[i] = 0;
      }
      a[i] = FUNC2(a[i], pX);
    }
    for(pX=a[0], i=1; i<sizeof(a)/sizeof(a[0]); i++){
      pX = FUNC2(a[i], pX);
    }
    p->pRule = FUNC2(p->pRule, pX);
  }else{
    /* An error has occurred. Setting p->pRule to point to the head of the
    ** allocated list ensures that the list will be cleaned up in this case.
    */
    FUNC0( p->pRule==0 );
    p->pRule = pHead;
  }

  return rc;
}