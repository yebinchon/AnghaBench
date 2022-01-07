
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_vtab ;
typedef int sqlite3_str ;
typedef int sqlite3 ;
struct TYPE_7__ {int * pModule; } ;
struct TYPE_8__ {int nBusy; char* zDb; char* zName; scalar_t__ nAux; int nDim2; int nDim; int nBytesPerCell; int eCoordType; TYPE_1__ base; } ;
typedef TYPE_2__ Rtree ;


 int RTREE_COORD_INT32 ;
 int RTREE_COORD_REAL32 ;
 int RTREE_MAX_AUX_COLUMN ;
 int RTREE_MAX_DIMENSIONS ;
 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_VTAB_CONSTRAINT_SUPPORT ;
 int assert (int) ;
 int getNodeSize (int *,TYPE_2__*,int,char**) ;
 int memcpy (char*,char const* const,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int rtreeModule ;
 int rtreeRelease (TYPE_2__*) ;
 int rtreeSqlInit (TYPE_2__*,int *,char const* const,char const* const,int) ;
 int sqlite3_declare_vtab (int *,char*) ;
 char const* sqlite3_errmsg (int *) ;
 int sqlite3_free (char*) ;
 scalar_t__ sqlite3_malloc64 (int) ;
 char* sqlite3_mprintf (char*,char const*) ;
 int sqlite3_str_appendf (int *,char*,...) ;
 char* sqlite3_str_finish (int *) ;
 int * sqlite3_str_new (int *) ;
 int sqlite3_vtab_config (int *,int ,int) ;
 scalar_t__ strlen (char const* const) ;

__attribute__((used)) static int rtreeInit(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr,
  int isCreate
){
  int rc = SQLITE_OK;
  Rtree *pRtree;
  int nDb;
  int nName;
  int eCoordType = (pAux ? RTREE_COORD_INT32 : RTREE_COORD_REAL32);
  sqlite3_str *pSql;
  char *zSql;
  int ii = 4;
  int iErr;

  const char *aErrMsg[] = {
    0,
    "Wrong number of columns for an rtree table",
    "Too few columns for an rtree table",
    "Too many columns for an rtree table",
    "Auxiliary rtree columns must be last"
  };

  assert( RTREE_MAX_AUX_COLUMN<256 );
  if( argc>RTREE_MAX_AUX_COLUMN+3 ){
    *pzErr = sqlite3_mprintf("%s", aErrMsg[3]);
    return SQLITE_ERROR;
  }

  sqlite3_vtab_config(db, SQLITE_VTAB_CONSTRAINT_SUPPORT, 1);


  nDb = (int)strlen(argv[1]);
  nName = (int)strlen(argv[2]);
  pRtree = (Rtree *)sqlite3_malloc64(sizeof(Rtree)+nDb+nName+2);
  if( !pRtree ){
    return SQLITE_NOMEM;
  }
  memset(pRtree, 0, sizeof(Rtree)+nDb+nName+2);
  pRtree->nBusy = 1;
  pRtree->base.pModule = &rtreeModule;
  pRtree->zDb = (char *)&pRtree[1];
  pRtree->zName = &pRtree->zDb[nDb+1];
  pRtree->eCoordType = (u8)eCoordType;
  memcpy(pRtree->zDb, argv[1], nDb);
  memcpy(pRtree->zName, argv[2], nName);






  pSql = sqlite3_str_new(db);
  sqlite3_str_appendf(pSql, "CREATE TABLE x(%s", argv[3]);
  for(ii=4; ii<argc; ii++){
    if( argv[ii][0]=='+' ){
      pRtree->nAux++;
      sqlite3_str_appendf(pSql, ",%s", argv[ii]+1);
    }else if( pRtree->nAux>0 ){
      break;
    }else{
      pRtree->nDim2++;
      sqlite3_str_appendf(pSql, ",%s", argv[ii]);
    }
  }
  sqlite3_str_appendf(pSql, ");");
  zSql = sqlite3_str_finish(pSql);
  if( !zSql ){
    rc = SQLITE_NOMEM;
  }else if( ii<argc ){
    *pzErr = sqlite3_mprintf("%s", aErrMsg[4]);
    rc = SQLITE_ERROR;
  }else if( SQLITE_OK!=(rc = sqlite3_declare_vtab(db, zSql)) ){
    *pzErr = sqlite3_mprintf("%s", sqlite3_errmsg(db));
  }
  sqlite3_free(zSql);
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
    *pzErr = sqlite3_mprintf("%s", aErrMsg[iErr]);
    goto rtreeInit_fail;
  }
  pRtree->nBytesPerCell = 8 + pRtree->nDim2*4;


  rc = getNodeSize(db, pRtree, isCreate, pzErr);
  if( rc ) goto rtreeInit_fail;
  rc = rtreeSqlInit(pRtree, db, argv[1], argv[2], isCreate);
  if( rc ){
    *pzErr = sqlite3_mprintf("%s", sqlite3_errmsg(db));
    goto rtreeInit_fail;
  }

  *ppVtab = (sqlite3_vtab *)pRtree;
  return SQLITE_OK;

rtreeInit_fail:
  if( rc==SQLITE_OK ) rc = SQLITE_ERROR;
  assert( *ppVtab==0 );
  assert( pRtree->nBusy==1 );
  rtreeRelease(pRtree);
  return rc;
}
