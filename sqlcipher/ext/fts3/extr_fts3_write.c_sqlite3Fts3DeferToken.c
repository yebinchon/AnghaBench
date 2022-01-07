
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* pDeferred; } ;
struct TYPE_9__ {int iCol; struct TYPE_9__* pNext; TYPE_1__* pToken; } ;
struct TYPE_8__ {TYPE_2__* pDeferred; } ;
typedef TYPE_1__ Fts3PhraseToken ;
typedef TYPE_2__ Fts3DeferredToken ;
typedef TYPE_3__ Fts3Cursor ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_2__* sqlite3_malloc (int) ;

int sqlite3Fts3DeferToken(
  Fts3Cursor *pCsr,
  Fts3PhraseToken *pToken,
  int iCol
){
  Fts3DeferredToken *pDeferred;
  pDeferred = sqlite3_malloc(sizeof(*pDeferred));
  if( !pDeferred ){
    return SQLITE_NOMEM;
  }
  memset(pDeferred, 0, sizeof(*pDeferred));
  pDeferred->pToken = pToken;
  pDeferred->pNext = pCsr->pDeferred;
  pDeferred->iCol = iCol;
  pCsr->pDeferred = pDeferred;

  assert( pToken->pDeferred==0 );
  pToken->pDeferred = pDeferred;

  return SQLITE_OK;
}
