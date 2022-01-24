#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_4__ {int sz; struct TYPE_4__* pNext; scalar_t__* a; int /*<<< orphan*/  seq; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ Blob ;

/* Variables and functions */
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,char const*,...) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(
  sqlite3 *db,             /* Read from this database */
  const char *zSql,        /* Query used to extract the blobs */
  int onlyId,              /* Only load where id is this value */
  int *pN,                 /* OUT: Write number of blobs loaded here */
  Blob **ppList            /* OUT: Write the head of the blob list here */
){
  Blob head;
  Blob *p;
  sqlite3_stmt *pStmt;
  int n = 0;
  int rc;
  char *z2;

  if( onlyId>0 ){
    z2 = FUNC9("%s WHERE rowid=%d", zSql, onlyId);
  }else{
    z2 = FUNC9("%s", zSql);
  }
  rc = FUNC10(db, z2, -1, &pStmt, 0);
  FUNC8(z2);
  if( rc ) FUNC0("%s", FUNC6(db));
  head.pNext = 0;
  p = &head;
  while( SQLITE_ROW==FUNC11(pStmt) ){
    int sz = FUNC4(pStmt, 1);
    Blob *pNew = FUNC2(0, sizeof(*pNew)+sz );
    pNew->id = FUNC5(pStmt, 0);
    pNew->sz = sz;
    pNew->seq = n++;
    pNew->pNext = 0;
    FUNC1(pNew->a, FUNC3(pStmt,1), sz);
    pNew->a[sz] = 0;
    p->pNext = pNew;
    p = pNew;
  }
  FUNC7(pStmt);
  *pN = n;
  *ppList = head.pNext;
}