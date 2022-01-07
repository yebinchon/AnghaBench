
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pUserData; int (* xDestroy ) (int ) ;struct TYPE_5__* pNext; struct TYPE_5__* pTok; struct TYPE_5__* pAux; } ;
typedef TYPE_1__ Fts5TokenizerModule ;
typedef TYPE_1__ Fts5Global ;
typedef TYPE_1__ Fts5Auxiliary ;


 int sqlite3_free (TYPE_1__*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void fts5ModuleDestroy(void *pCtx){
  Fts5TokenizerModule *pTok, *pNextTok;
  Fts5Auxiliary *pAux, *pNextAux;
  Fts5Global *pGlobal = (Fts5Global*)pCtx;

  for(pAux=pGlobal->pAux; pAux; pAux=pNextAux){
    pNextAux = pAux->pNext;
    if( pAux->xDestroy ) pAux->xDestroy(pAux->pUserData);
    sqlite3_free(pAux);
  }

  for(pTok=pGlobal->pTok; pTok; pTok=pNextTok){
    pNextTok = pTok->pNext;
    if( pTok->xDestroy ) pTok->xDestroy(pTok->pUserData);
    sqlite3_free(pTok);
  }

  sqlite3_free(pGlobal);
}
