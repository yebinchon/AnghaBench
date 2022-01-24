#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_5__ {scalar_t__ zSelf; scalar_t__ zTableName; scalar_t__ zIdColumn; scalar_t__ zParentColumn; int /*<<< orphan*/  base; void* zDb; int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ closure_vtab ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (char*,char const* const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_1__* FUNC6 (int) ; 
 void* FUNC7 (char*,char const* const) ; 

__attribute__((used)) static int FUNC8(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  int rc = SQLITE_OK;              /* Return code */
  closure_vtab *pNew = 0;          /* New virtual table */
  const char *zDb = argv[1];
  const char *zVal;
  int i;

  (void)pAux;
  *ppVtab = 0;
  pNew = FUNC6( sizeof(*pNew) );
  if( pNew==0 ) return SQLITE_NOMEM;
  rc = SQLITE_NOMEM;
  FUNC3(pNew, 0, sizeof(*pNew));
  pNew->db = db;
  pNew->zDb = FUNC7("%s", zDb);
  if( pNew->zDb==0 ) goto closureConnectError;
  pNew->zSelf = FUNC7("%s", argv[2]);
  if( pNew->zSelf==0 ) goto closureConnectError;
  for(i=3; i<argc; i++){
    zVal = FUNC2("tablename", argv[i]);
    if( zVal ){
      FUNC5(pNew->zTableName);
      pNew->zTableName = FUNC0(zVal);
      if( pNew->zTableName==0 ) goto closureConnectError;
      continue;
    }
    zVal = FUNC2("idcolumn", argv[i]);
    if( zVal ){
      FUNC5(pNew->zIdColumn);
      pNew->zIdColumn = FUNC0(zVal);
      if( pNew->zIdColumn==0 ) goto closureConnectError;
      continue;
    }
    zVal = FUNC2("parentcolumn", argv[i]);
    if( zVal ){
      FUNC5(pNew->zParentColumn);
      pNew->zParentColumn = FUNC0(zVal);
      if( pNew->zParentColumn==0 ) goto closureConnectError;
      continue;
    }
    *pzErr = FUNC7("unrecognized argument: [%s]\n", argv[i]);
    FUNC1(pNew);
    *ppVtab = 0;
    return SQLITE_ERROR;
  }
  rc = FUNC4(db,
         "CREATE TABLE x(id,depth,root HIDDEN,tablename HIDDEN,"
                        "idcolumn HIDDEN,parentcolumn HIDDEN)"
       );
#define CLOSURE_COL_ID              0
#define CLOSURE_COL_DEPTH           1
#define CLOSURE_COL_ROOT            2
#define CLOSURE_COL_TABLENAME       3
#define CLOSURE_COL_IDCOLUMN        4
#define CLOSURE_COL_PARENTCOLUMN    5
  if( rc!=SQLITE_OK ){
    FUNC1(pNew);
  }
  *ppVtab = &pNew->base;
  return rc;

closureConnectError:
  FUNC1(pNew);
  return rc;
}