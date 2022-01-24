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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  sqlite3_vtab ;
typedef  int /*<<< orphan*/  sqlite3_str ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_7__ {int /*<<< orphan*/ * pModule; } ;
struct TYPE_8__ {int nBusy; char* zDb; char* zName; scalar_t__ nAux; int nDim2; int nDim; int nBytesPerCell; int /*<<< orphan*/  eCoordType; TYPE_1__ base; } ;
typedef  TYPE_2__ Rtree ;

/* Variables and functions */
 int RTREE_COORD_INT32 ; 
 int RTREE_COORD_REAL32 ; 
 int RTREE_MAX_AUX_COLUMN ; 
 int RTREE_MAX_DIMENSIONS ; 
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
 char const* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int) ; 
 char* FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (char const* const) ; 

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
  int nDb;              /* Length of string argv[1] */
  int nName;            /* Length of string argv[2] */
  int eCoordType = (pAux ? RTREE_COORD_INT32 : RTREE_COORD_REAL32);
  sqlite3_str *pSql;
  char *zSql;
  int ii = 4;
  int iErr;

  const char *aErrMsg[] = {
    0,                                                    /* 0 */
    "Wrong number of columns for an rtree table",         /* 1 */
    "Too few columns for an rtree table",                 /* 2 */
    "Too many columns for an rtree table",                /* 3 */
    "Auxiliary rtree columns must be last"                /* 4 */
  };

  FUNC0( RTREE_MAX_AUX_COLUMN<256 ); /* Aux columns counted by a u8 */
  if( argc>RTREE_MAX_AUX_COLUMN+3 ){
    *pzErr = FUNC10("%s", aErrMsg[3]);
    return SQLITE_ERROR;
  }

  FUNC14(db, SQLITE_VTAB_CONSTRAINT_SUPPORT, 1);

  /* Allocate the sqlite3_vtab structure */
  nDb = (int)FUNC15(argv[1]);
  nName = (int)FUNC15(argv[2]);
  pRtree = (Rtree *)FUNC9(sizeof(Rtree)+nDb+nName+2);
  if( !pRtree ){
    return SQLITE_NOMEM;
  }
  FUNC3(pRtree, 0, sizeof(Rtree)+nDb+nName+2);
  pRtree->nBusy = 1;
  pRtree->base.pModule = &rtreeModule;
  pRtree->zDb = (char *)&pRtree[1];
  pRtree->zName = &pRtree->zDb[nDb+1];
  pRtree->eCoordType = (u8)eCoordType;
  FUNC2(pRtree->zDb, argv[1], nDb);
  FUNC2(pRtree->zName, argv[2], nName);


  /* Create/Connect to the underlying relational database schema. If
  ** that is successful, call sqlite3_declare_vtab() to configure
  ** the r-tree table schema.
  */
  pSql = FUNC13(db);
  FUNC11(pSql, "CREATE TABLE x(%s", argv[3]);
  for(ii=4; ii<argc; ii++){
    if( argv[ii][0]=='+' ){
      pRtree->nAux++;
      FUNC11(pSql, ",%s", argv[ii]+1);
    }else if( pRtree->nAux>0 ){
      break;
    }else{
      pRtree->nDim2++;
      FUNC11(pSql, ",%s", argv[ii]);
    }
  }
  FUNC11(pSql, ");");
  zSql = FUNC12(pSql);
  if( !zSql ){
    rc = SQLITE_NOMEM;
  }else if( ii<argc ){
    *pzErr = FUNC10("%s", aErrMsg[4]);
    rc = SQLITE_ERROR;
  }else if( SQLITE_OK!=(rc = FUNC6(db, zSql)) ){
    *pzErr = FUNC10("%s", FUNC7(db));
  }
  FUNC8(zSql);
  if( rc ) goto rtreeInit_fail;
  pRtree->nDim = pRtree->nDim2/2;
  if( pRtree->nDim<1 ){
    iErr = 2;
  }else if( pRtree->nDim2>RTREE_MAX_DIMENSIONS*2 ){
    iErr = 3;
  }else if( pRtree->nDim2 % 2 ){
    iErr = 1;
  }else{
    iErr = 0;
  }
  if( iErr ){
    *pzErr = FUNC10("%s", aErrMsg[iErr]);
    goto rtreeInit_fail;
  }
  pRtree->nBytesPerCell = 8 + pRtree->nDim2*4;

  /* Figure out the node size to use. */
  rc = FUNC1(db, pRtree, isCreate, pzErr);
  if( rc ) goto rtreeInit_fail;
  rc = FUNC5(pRtree, db, argv[1], argv[2], isCreate);
  if( rc ){
    *pzErr = FUNC10("%s", FUNC7(db));
    goto rtreeInit_fail;
  }

  *ppVtab = (sqlite3_vtab *)pRtree;
  return SQLITE_OK;

rtreeInit_fail:
  if( rc==SQLITE_OK ) rc = SQLITE_ERROR;
  FUNC0( *ppVtab==0 );
  FUNC0( pRtree->nBusy==1 );
  FUNC4(pRtree);
  return rc;
}