#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* pTable; } ;
typedef  TYPE_2__ sqlite3expert ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_7__ {TYPE_1__* pTab; TYPE_2__* pExpert; } ;
struct TYPE_5__ {int /*<<< orphan*/  zName; } ;
typedef  TYPE_3__ ExpertVtab ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char const* const) ; 
 TYPE_3__* FUNC2 (int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const* const) ; 

__attribute__((used)) static int FUNC7(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  sqlite3expert *pExpert = (sqlite3expert*)pAux;
  ExpertVtab *p = 0;
  int rc;

  if( argc!=4 ){
    *pzErr = FUNC5("internal error!");
    rc = SQLITE_ERROR;
  }else{
    char *zCreateTable = FUNC1(argv[3]);
    if( zCreateTable ){
      rc = FUNC3(db, zCreateTable);
      if( rc==SQLITE_OK ){
        p = FUNC2(&rc, sizeof(ExpertVtab));
      }
      if( rc==SQLITE_OK ){
        p->pExpert = pExpert;
        p->pTab = pExpert->pTable;
        FUNC0( FUNC6(p->pTab->zName, argv[2])==0 );
      }
      FUNC4(zCreateTable);
    }else{
      rc = SQLITE_NOMEM;
    }
  }

  *ppVtab = (sqlite3_vtab*)p;
  return rc;
}