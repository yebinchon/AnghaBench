
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* xFindTokenizer ) (TYPE_1__*,char const*,void**,TYPE_4__*) ;} ;
typedef TYPE_1__ fts5_api ;
struct TYPE_8__ {int (* xCreate ) (void*,char const**,int,int *) ;} ;
struct TYPE_7__ {int pTokenizer; TYPE_4__ tokenizer; } ;
typedef TYPE_2__ PorterTokenizer ;
typedef int Fts5Tokenizer ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int fts5PorterDelete (int *) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ sqlite3_malloc (int) ;
 int stub1 (TYPE_1__*,char const*,void**,TYPE_4__*) ;
 int stub2 (void*,char const**,int,int *) ;

__attribute__((used)) static int fts5PorterCreate(
  void *pCtx,
  const char **azArg, int nArg,
  Fts5Tokenizer **ppOut
){
  fts5_api *pApi = (fts5_api*)pCtx;
  int rc = SQLITE_OK;
  PorterTokenizer *pRet;
  void *pUserdata = 0;
  const char *zBase = "unicode61";

  if( nArg>0 ){
    zBase = azArg[0];
  }

  pRet = (PorterTokenizer*)sqlite3_malloc(sizeof(PorterTokenizer));
  if( pRet ){
    memset(pRet, 0, sizeof(PorterTokenizer));
    rc = pApi->xFindTokenizer(pApi, zBase, &pUserdata, &pRet->tokenizer);
  }else{
    rc = SQLITE_NOMEM;
  }
  if( rc==SQLITE_OK ){
    int nArg2 = (nArg>0 ? nArg-1 : 0);
    const char **azArg2 = (nArg2 ? &azArg[1] : 0);
    rc = pRet->tokenizer.xCreate(pUserdata, azArg2, nArg2, &pRet->pTokenizer);
  }

  if( rc!=SQLITE_OK ){
    fts5PorterDelete((Fts5Tokenizer*)pRet);
    pRet = 0;
  }
  *ppOut = (Fts5Tokenizer*)pRet;
  return rc;
}
