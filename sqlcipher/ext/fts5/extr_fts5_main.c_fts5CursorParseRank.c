
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sqlite3_value ;
struct TYPE_11__ {scalar_t__ zRankArgs; scalar_t__ zRank; } ;
struct TYPE_9__ {TYPE_1__* pVtab; } ;
struct TYPE_10__ {char* zRank; char* zRankArgs; TYPE_2__ base; } ;
struct TYPE_8__ {int zErrMsg; } ;
typedef TYPE_3__ Fts5Cursor ;
typedef TYPE_4__ Fts5Config ;


 int CsrFlagSet (TYPE_3__*,int ) ;
 int FTS5CSR_FREE_ZRANK ;
 scalar_t__ FTS5_DEFAULT_RANK ;
 int SQLITE_ERROR ;
 scalar_t__ SQLITE_NULL ;
 int SQLITE_OK ;
 int sqlite3Fts5ConfigParseRank (char const*,char**,char**) ;
 int sqlite3_mprintf (char*,char const*) ;
 scalar_t__ sqlite3_value_text (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static int fts5CursorParseRank(
  Fts5Config *pConfig,
  Fts5Cursor *pCsr,
  sqlite3_value *pRank
){
  int rc = SQLITE_OK;
  if( pRank ){
    const char *z = (const char*)sqlite3_value_text(pRank);
    char *zRank = 0;
    char *zRankArgs = 0;

    if( z==0 ){
      if( sqlite3_value_type(pRank)==SQLITE_NULL ) rc = SQLITE_ERROR;
    }else{
      rc = sqlite3Fts5ConfigParseRank(z, &zRank, &zRankArgs);
    }
    if( rc==SQLITE_OK ){
      pCsr->zRank = zRank;
      pCsr->zRankArgs = zRankArgs;
      CsrFlagSet(pCsr, FTS5CSR_FREE_ZRANK);
    }else if( rc==SQLITE_ERROR ){
      pCsr->base.pVtab->zErrMsg = sqlite3_mprintf(
          "parse error in rank function: %s", z
      );
    }
  }else{
    if( pConfig->zRank ){
      pCsr->zRank = (char*)pConfig->zRank;
      pCsr->zRankArgs = (char*)pConfig->zRankArgs;
    }else{
      pCsr->zRank = (char*)FTS5_DEFAULT_RANK;
      pCsr->zRankArgs = 0;
    }
  }
  return rc;
}
