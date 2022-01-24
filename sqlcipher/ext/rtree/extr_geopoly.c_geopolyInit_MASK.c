#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3_str ;
typedef  int sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_7__ {int /*<<< orphan*/ * pModule; } ;
struct TYPE_8__ {int nBusy; char* zDb; char* zName; int nDim; int nDim2; int nAux; int nAuxNotNull; int nBytesPerCell; int /*<<< orphan*/  eCoordType; TYPE_1__ base; } ;
typedef  TYPE_2__ Rtree ;

/* Variables and functions */
 int /*<<< orphan*/  RTREE_COORD_REAL32 ; 
 int SQLITE_ERROR ; 
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_VTAB_CONSTRAINT_SUPPORT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const* const,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtreeModule ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,char const* const,char const* const,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int) ; 
 char* FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (char const* const) ; 

__attribute__((used)) static int FUNC16(
  sqlite3 *db,                        /* Database connection */
  void *pAux,                         /* One of the RTREE_COORD_* constants */
  int argc, const char *const*argv,   /* Parameters to CREATE TABLE statement */
  sqlite3_vtab **ppVtab,              /* OUT: New virtual table */
  char **pzErr,                       /* OUT: Error message, if any */
  int isCreate                        /* True for xCreate, false for xConnect */
){
  int rc = SQLITE_OK;
  Rtree *pRtree;
  sqlite3_int64 nDb;              /* Length of string argv[1] */
  sqlite3_int64 nName;            /* Length of string argv[2] */
  sqlite3_str *pSql;
  char *zSql;
  int ii;

  FUNC14(db, SQLITE_VTAB_CONSTRAINT_SUPPORT, 1);

  /* Allocate the sqlite3_vtab structure */
  nDb = FUNC15(argv[1]);
  nName = FUNC15(argv[2]);
  pRtree = (Rtree *)FUNC9(sizeof(Rtree)+nDb+nName+2);
  if( !pRtree ){
    return SQLITE_NOMEM;
  }
  FUNC3(pRtree, 0, sizeof(Rtree)+nDb+nName+2);
  pRtree->nBusy = 1;
  pRtree->base.pModule = &rtreeModule;
  pRtree->zDb = (char *)&pRtree[1];
  pRtree->zName = &pRtree->zDb[nDb+1];
  pRtree->eCoordType = RTREE_COORD_REAL32;
  pRtree->nDim = 2;
  pRtree->nDim2 = 4;
  FUNC2(pRtree->zDb, argv[1], nDb);
  FUNC2(pRtree->zName, argv[2], nName);


  /* Create/Connect to the underlying relational database schema. If
  ** that is successful, call sqlite3_declare_vtab() to configure
  ** the r-tree table schema.
  */
  pSql = FUNC13(db);
  FUNC11(pSql, "CREATE TABLE x(_shape");
  pRtree->nAux = 1;         /* Add one for _shape */
  pRtree->nAuxNotNull = 1;  /* The _shape column is always not-null */
  for(ii=3; ii<argc; ii++){
    pRtree->nAux++;
    FUNC11(pSql, ",%s", argv[ii]);
  }
  FUNC11(pSql, ");");
  zSql = FUNC12(pSql);
  if( !zSql ){
    rc = SQLITE_NOMEM;
  }else if( SQLITE_OK!=(rc = FUNC6(db, zSql)) ){
    *pzErr = FUNC10("%s", FUNC7(db));
  }
  FUNC8(zSql);
  if( rc ) goto geopolyInit_fail;
  pRtree->nBytesPerCell = 8 + pRtree->nDim2*4;

  /* Figure out the node size to use. */
  rc = FUNC1(db, pRtree, isCreate, pzErr);
  if( rc ) goto geopolyInit_fail;
  rc = FUNC5(pRtree, db, argv[1], argv[2], isCreate);
  if( rc ){
    *pzErr = FUNC10("%s", FUNC7(db));
    goto geopolyInit_fail;
  }

  *ppVtab = (sqlite3_vtab *)pRtree;
  return SQLITE_OK;

geopolyInit_fail:
  if( rc==SQLITE_OK ) rc = SQLITE_ERROR;
  FUNC0( *ppVtab==0 );
  FUNC0( pRtree->nBusy==1 );
  FUNC4(pRtree);
  return rc;
}