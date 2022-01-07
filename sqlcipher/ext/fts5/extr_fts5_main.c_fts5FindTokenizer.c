
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fts5_tokenizer ;
typedef int fts5_api ;
struct TYPE_3__ {void* pUserData; int x; } ;
typedef TYPE_1__ Fts5TokenizerModule ;
typedef int Fts5Global ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 TYPE_1__* fts5LocateTokenizer (int *,char const*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int fts5FindTokenizer(
  fts5_api *pApi,
  const char *zName,
  void **ppUserData,
  fts5_tokenizer *pTokenizer
){
  int rc = SQLITE_OK;
  Fts5TokenizerModule *pMod;

  pMod = fts5LocateTokenizer((Fts5Global*)pApi, zName);
  if( pMod ){
    *pTokenizer = pMod->x;
    *ppUserData = pMod->pUserData;
  }else{
    memset(pTokenizer, 0, sizeof(fts5_tokenizer));
    rc = SQLITE_ERROR;
  }

  return rc;
}
