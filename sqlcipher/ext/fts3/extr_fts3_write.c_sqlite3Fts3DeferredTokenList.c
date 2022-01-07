
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_5__ {TYPE_1__* pList; } ;
struct TYPE_4__ {int nData; int * aData; } ;
typedef TYPE_2__ Fts3DeferredToken ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memcpy (char*,int *,int) ;
 int sqlite3Fts3GetVarint (int *,int *) ;
 scalar_t__ sqlite3_malloc (int) ;

int sqlite3Fts3DeferredTokenList(
  Fts3DeferredToken *p,
  char **ppData,
  int *pnData
){
  char *pRet;
  int nSkip;
  sqlite3_int64 dummy;

  *ppData = 0;
  *pnData = 0;

  if( p->pList==0 ){
    return SQLITE_OK;
  }

  pRet = (char *)sqlite3_malloc(p->pList->nData);
  if( !pRet ) return SQLITE_NOMEM;

  nSkip = sqlite3Fts3GetVarint(p->pList->aData, &dummy);
  *pnData = p->pList->nData - nSkip;
  *ppData = pRet;

  memcpy(pRet, &p->pList->aData[nSkip], *pnData);
  return SQLITE_OK;
}
