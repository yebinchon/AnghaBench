
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
typedef int fts5_tokenizer ;
typedef int fts5_api ;
struct TYPE_5__ {scalar_t__ pTok; TYPE_1__* pDfltTok; } ;
struct TYPE_4__ {char* zName; void (* xDestroy ) (void*) ;scalar_t__ pNext; int x; void* pUserData; } ;
typedef TYPE_1__ Fts5TokenizerModule ;
typedef TYPE_2__ Fts5Global ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memcpy (char*,char const*,scalar_t__) ;
 int memset (TYPE_1__*,int ,size_t) ;
 scalar_t__ sqlite3_malloc64 (scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int fts5CreateTokenizer(
  fts5_api *pApi,
  const char *zName,
  void *pUserData,
  fts5_tokenizer *pTokenizer,
  void(*xDestroy)(void*)
){
  Fts5Global *pGlobal = (Fts5Global*)pApi;
  Fts5TokenizerModule *pNew;
  sqlite3_int64 nName;
  sqlite3_int64 nByte;
  int rc = SQLITE_OK;

  nName = strlen(zName) + 1;
  nByte = sizeof(Fts5TokenizerModule) + nName;
  pNew = (Fts5TokenizerModule*)sqlite3_malloc64(nByte);
  if( pNew ){
    memset(pNew, 0, (size_t)nByte);
    pNew->zName = (char*)&pNew[1];
    memcpy(pNew->zName, zName, nName);
    pNew->pUserData = pUserData;
    pNew->x = *pTokenizer;
    pNew->xDestroy = xDestroy;
    pNew->pNext = pGlobal->pTok;
    pGlobal->pTok = pNew;
    if( pNew->pNext==0 ){
      pGlobal->pDfltTok = pNew;
    }
  }else{
    rc = SQLITE_NOMEM;
  }

  return rc;
}
