
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
typedef int fts5_extension_function ;
typedef int fts5_api ;
struct TYPE_5__ {char* zFunc; void (* xDestroy ) (void*) ;struct TYPE_5__* pNext; int xFunc; void* pUserData; TYPE_1__* pGlobal; } ;
struct TYPE_4__ {TYPE_2__* pAux; int db; } ;
typedef TYPE_1__ Fts5Global ;
typedef TYPE_2__ Fts5Auxiliary ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memcpy (char*,char const*,scalar_t__) ;
 int memset (TYPE_2__*,int ,size_t) ;
 scalar_t__ sqlite3_malloc64 (scalar_t__) ;
 int sqlite3_overload_function (int ,char const*,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int fts5CreateAux(
  fts5_api *pApi,
  const char *zName,
  void *pUserData,
  fts5_extension_function xFunc,
  void(*xDestroy)(void*)
){
  Fts5Global *pGlobal = (Fts5Global*)pApi;
  int rc = sqlite3_overload_function(pGlobal->db, zName, -1);
  if( rc==SQLITE_OK ){
    Fts5Auxiliary *pAux;
    sqlite3_int64 nName;
    sqlite3_int64 nByte;

    nName = strlen(zName) + 1;
    nByte = sizeof(Fts5Auxiliary) + nName;
    pAux = (Fts5Auxiliary*)sqlite3_malloc64(nByte);
    if( pAux ){
      memset(pAux, 0, (size_t)nByte);
      pAux->zFunc = (char*)&pAux[1];
      memcpy(pAux->zFunc, zName, nName);
      pAux->pGlobal = pGlobal;
      pAux->pUserData = pUserData;
      pAux->xFunc = xFunc;
      pAux->xDestroy = xDestroy;
      pAux->pNext = pGlobal->pAux;
      pGlobal->pAux = pAux;
    }else{
      rc = SQLITE_NOMEM;
    }
  }

  return rc;
}
