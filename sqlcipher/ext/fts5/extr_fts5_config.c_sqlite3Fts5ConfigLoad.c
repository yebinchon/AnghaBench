
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
struct TYPE_4__ {scalar_t__* pzErrmsg; int iCookie; int db; int zName; int zDb; int nHashSize; int nCrisisMerge; int nUsermerge; int nAutomerge; int pgsz; } ;
typedef TYPE_1__ Fts5Config ;


 int FTS5_CURRENT_VERSION ;
 int FTS5_DEFAULT_AUTOMERGE ;
 int FTS5_DEFAULT_CRISISMERGE ;
 int FTS5_DEFAULT_HASHSIZE ;
 int FTS5_DEFAULT_PAGE_SIZE ;
 int FTS5_DEFAULT_USERMERGE ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int assert (int) ;
 int sqlite3Fts5ConfigSetValue (TYPE_1__*,char const*,int *,int*) ;
 char* sqlite3Fts5Mprintf (int*,char const*,int ,int ) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;
 int * sqlite3_column_value (int *,int) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 scalar_t__ sqlite3_mprintf (char*,int,int) ;
 int sqlite3_prepare_v2 (int ,char*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;
 scalar_t__ sqlite3_stricmp (char const*,char*) ;
 int sqlite3_value_int (int *) ;

int sqlite3Fts5ConfigLoad(Fts5Config *pConfig, int iCookie){
  const char *zSelect = "SELECT k, v FROM %Q.'%q_config'";
  char *zSql;
  sqlite3_stmt *p = 0;
  int rc = SQLITE_OK;
  int iVersion = 0;


  pConfig->pgsz = FTS5_DEFAULT_PAGE_SIZE;
  pConfig->nAutomerge = FTS5_DEFAULT_AUTOMERGE;
  pConfig->nUsermerge = FTS5_DEFAULT_USERMERGE;
  pConfig->nCrisisMerge = FTS5_DEFAULT_CRISISMERGE;
  pConfig->nHashSize = FTS5_DEFAULT_HASHSIZE;

  zSql = sqlite3Fts5Mprintf(&rc, zSelect, pConfig->zDb, pConfig->zName);
  if( zSql ){
    rc = sqlite3_prepare_v2(pConfig->db, zSql, -1, &p, 0);
    sqlite3_free(zSql);
  }

  assert( rc==SQLITE_OK || p==0 );
  if( rc==SQLITE_OK ){
    while( SQLITE_ROW==sqlite3_step(p) ){
      const char *zK = (const char*)sqlite3_column_text(p, 0);
      sqlite3_value *pVal = sqlite3_column_value(p, 1);
      if( 0==sqlite3_stricmp(zK, "version") ){
        iVersion = sqlite3_value_int(pVal);
      }else{
        int bDummy = 0;
        sqlite3Fts5ConfigSetValue(pConfig, zK, pVal, &bDummy);
      }
    }
    rc = sqlite3_finalize(p);
  }

  if( rc==SQLITE_OK && iVersion!=FTS5_CURRENT_VERSION ){
    rc = SQLITE_ERROR;
    if( pConfig->pzErrmsg ){
      assert( 0==*pConfig->pzErrmsg );
      *pConfig->pzErrmsg = sqlite3_mprintf(
          "invalid fts5 file format (found %d, expected %d) - run 'rebuild'",
          iVersion, FTS5_CURRENT_VERSION
      );
    }
  }

  if( rc==SQLITE_OK ){
    pConfig->iCookie = iCookie;
  }
  return rc;
}
