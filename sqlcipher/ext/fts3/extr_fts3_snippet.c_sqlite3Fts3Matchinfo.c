
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_context ;
struct TYPE_5__ {scalar_t__ pVtab; } ;
struct TYPE_6__ {int pExpr; TYPE_1__ base; } ;
typedef int Fts3Table ;
typedef TYPE_2__ Fts3Cursor ;


 char* FTS3_MATCHINFO_DEFAULT ;
 int SQLITE_STATIC ;
 int fts3GetMatchinfo (int *,TYPE_2__*,char const*) ;
 int sqlite3Fts3SegmentsClose (int *) ;
 int sqlite3_result_blob (int *,char*,int ,int ) ;

void sqlite3Fts3Matchinfo(
  sqlite3_context *pContext,
  Fts3Cursor *pCsr,
  const char *zArg
){
  Fts3Table *pTab = (Fts3Table *)pCsr->base.pVtab;
  const char *zFormat;

  if( zArg ){
    zFormat = zArg;
  }else{
    zFormat = FTS3_MATCHINFO_DEFAULT;
  }

  if( !pCsr->pExpr ){
    sqlite3_result_blob(pContext, "", 0, SQLITE_STATIC);
    return;
  }else{

    fts3GetMatchinfo(pContext, pCsr, zFormat);
    sqlite3Fts3SegmentsClose(pTab);
  }
}
