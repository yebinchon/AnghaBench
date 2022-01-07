
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct RenameCtx {int nList; TYPE_1__* pList; } ;
struct TYPE_5__ {TYPE_1__* pRename; } ;
struct TYPE_4__ {void* p; struct TYPE_4__* pNext; } ;
typedef TYPE_1__ RenameToken ;
typedef TYPE_2__ Parse ;


 int assert (int) ;

__attribute__((used)) static void renameTokenFind(Parse *pParse, struct RenameCtx *pCtx, void *pPtr){
  RenameToken **pp;
  assert( pPtr!=0 );
  for(pp=&pParse->pRename; (*pp); pp=&(*pp)->pNext){
    if( (*pp)->p==pPtr ){
      RenameToken *pToken = *pp;
      *pp = pToken->pNext;
      pToken->pNext = pCtx->pList;
      pCtx->pList = pToken;
      pCtx->nList++;
      break;
    }
  }
}
