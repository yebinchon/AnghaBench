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
struct TYPE_4__ {int nRow; int iInst; } ;
typedef  TYPE_1__ vtablog_vtab ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC4 (int) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char**,char*,char const*,char**) ; 

__attribute__((used)) static int FUNC7(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr,
  int isCreate
){
  static int nInst = 0;
  vtablog_vtab *pNew;
  int i;
  int rc;
  int iInst = ++nInst;
  char *zSchema = 0;
  char *zNRow = 0;

  FUNC2("vtablog%s(tab=%d):\n", isCreate ? "Create" : "Connect", iInst);
  FUNC2("  argc=%d\n", argc);
  for(i=0; i<argc; i++){
    FUNC2("  argv[%d] = ", i);
    if( argv[i] ){
      FUNC2("[%s]\n", argv[i]);
    }else{
      FUNC2("NULL\n");
    }
  }

  for(i=3; i<argc; i++){
    const char *z = argv[i];
    if( FUNC6(pzErr, "schema", z, &zSchema) ){
      return SQLITE_ERROR;
    }
    if( FUNC6(pzErr, "rows", z, &zNRow) ){
      return SQLITE_ERROR;
    }
  }

  if( zSchema==0 ){
    *pzErr = FUNC5("no schema defined");
    return SQLITE_ERROR;
  }
  rc = FUNC3(db, zSchema);
  if( rc==SQLITE_OK ){
    pNew = FUNC4( sizeof(*pNew) );
    *ppVtab = (sqlite3_vtab*)pNew;
    if( pNew==0 ) return SQLITE_NOMEM;
    FUNC1(pNew, 0, sizeof(*pNew));
    pNew->nRow = 10;
    if( zNRow ) pNew->nRow = FUNC0(zNRow);
    pNew->iInst = iInst;
  }
  return rc;
}