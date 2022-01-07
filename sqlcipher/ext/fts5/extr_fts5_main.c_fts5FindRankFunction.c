
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
typedef int sqlite3_int64 ;
struct TYPE_14__ {int db; } ;
struct TYPE_9__ {scalar_t__ pVtab; } ;
struct TYPE_13__ {char* zRank; char* zRankArgs; int nRankArg; int * pRank; int * pRankArgStmt; int ** apRankArg; TYPE_1__ base; } ;
struct TYPE_10__ {scalar_t__ zErrMsg; } ;
struct TYPE_11__ {TYPE_2__ base; TYPE_6__* pConfig; } ;
struct TYPE_12__ {TYPE_3__ p; } ;
typedef TYPE_4__ Fts5FullTable ;
typedef TYPE_5__ Fts5Cursor ;
typedef TYPE_6__ Fts5Config ;
typedef int Fts5Auxiliary ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int SQLITE_PREPARE_PERSISTENT ;
 scalar_t__ SQLITE_ROW ;
 int assert (int) ;
 int * fts5FindAuxiliary (TYPE_4__*,char const*) ;
 scalar_t__ sqlite3Fts5MallocZero (int*,int) ;
 char* sqlite3Fts5Mprintf (int*,char*,char const*) ;
 int sqlite3_column_count (int *) ;
 int * sqlite3_column_value (int *,int) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 scalar_t__ sqlite3_mprintf (char*,char const*) ;
 int sqlite3_prepare_v3 (int ,char*,int,int ,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static int fts5FindRankFunction(Fts5Cursor *pCsr){
  Fts5FullTable *pTab = (Fts5FullTable*)(pCsr->base.pVtab);
  Fts5Config *pConfig = pTab->p.pConfig;
  int rc = SQLITE_OK;
  Fts5Auxiliary *pAux = 0;
  const char *zRank = pCsr->zRank;
  const char *zRankArgs = pCsr->zRankArgs;

  if( zRankArgs ){
    char *zSql = sqlite3Fts5Mprintf(&rc, "SELECT %s", zRankArgs);
    if( zSql ){
      sqlite3_stmt *pStmt = 0;
      rc = sqlite3_prepare_v3(pConfig->db, zSql, -1,
                              SQLITE_PREPARE_PERSISTENT, &pStmt, 0);
      sqlite3_free(zSql);
      assert( rc==SQLITE_OK || pCsr->pRankArgStmt==0 );
      if( rc==SQLITE_OK ){
        if( SQLITE_ROW==sqlite3_step(pStmt) ){
          sqlite3_int64 nByte;
          pCsr->nRankArg = sqlite3_column_count(pStmt);
          nByte = sizeof(sqlite3_value*)*pCsr->nRankArg;
          pCsr->apRankArg = (sqlite3_value**)sqlite3Fts5MallocZero(&rc, nByte);
          if( rc==SQLITE_OK ){
            int i;
            for(i=0; i<pCsr->nRankArg; i++){
              pCsr->apRankArg[i] = sqlite3_column_value(pStmt, i);
            }
          }
          pCsr->pRankArgStmt = pStmt;
        }else{
          rc = sqlite3_finalize(pStmt);
          assert( rc!=SQLITE_OK );
        }
      }
    }
  }

  if( rc==SQLITE_OK ){
    pAux = fts5FindAuxiliary(pTab, zRank);
    if( pAux==0 ){
      assert( pTab->p.base.zErrMsg==0 );
      pTab->p.base.zErrMsg = sqlite3_mprintf("no such function: %s", zRank);
      rc = SQLITE_ERROR;
    }
  }

  pCsr->pRank = pAux;
  return rc;
}
