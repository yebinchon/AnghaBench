
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* xCreate ) (int ,char const**,int,int **) ;} ;
typedef TYPE_1__ fts5_tokenizer ;
struct TYPE_6__ {TYPE_1__ x; int pUserData; } ;
typedef TYPE_2__ Fts5TokenizerModule ;
typedef int Fts5Tokenizer ;
typedef int Fts5Global ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int assert (int) ;
 TYPE_2__* fts5LocateTokenizer (int *,char const*) ;
 char* sqlite3_mprintf (char*,...) ;
 int stub1 (int ,char const**,int,int **) ;

int sqlite3Fts5GetTokenizer(
  Fts5Global *pGlobal,
  const char **azArg,
  int nArg,
  Fts5Tokenizer **ppTok,
  fts5_tokenizer **ppTokApi,
  char **pzErr
){
  Fts5TokenizerModule *pMod;
  int rc = SQLITE_OK;

  pMod = fts5LocateTokenizer(pGlobal, nArg==0 ? 0 : azArg[0]);
  if( pMod==0 ){
    assert( nArg>0 );
    rc = SQLITE_ERROR;
    *pzErr = sqlite3_mprintf("no such tokenizer: %s", azArg[0]);
  }else{
    rc = pMod->x.xCreate(pMod->pUserData, &azArg[1], (nArg?nArg-1:0), ppTok);
    *ppTokApi = &pMod->x;
    if( rc!=SQLITE_OK && pzErr ){
      *pzErr = sqlite3_mprintf("error in tokenizer constructor");
    }
  }

  if( rc!=SQLITE_OK ){
    *ppTokApi = 0;
    *ppTok = 0;
  }

  return rc;
}
