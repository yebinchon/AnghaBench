
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int Token ;
struct TYPE_9__ {scalar_t__ mallocFailed; } ;
struct TYPE_8__ {TYPE_1__* pRename; TYPE_5__* db; } ;
struct TYPE_7__ {struct TYPE_7__* pNext; int t; void* p; } ;
typedef TYPE_1__ RenameToken ;
typedef TYPE_2__ Parse ;


 int assert (int) ;
 int renameTokenCheckAll (TYPE_2__*,void*) ;
 TYPE_1__* sqlite3DbMallocZero (TYPE_5__*,int) ;

void *sqlite3RenameTokenMap(Parse *pParse, void *pPtr, Token *pToken){
  RenameToken *pNew;
  assert( pPtr || pParse->db->mallocFailed );
  renameTokenCheckAll(pParse, pPtr);
  pNew = sqlite3DbMallocZero(pParse->db, sizeof(RenameToken));
  if( pNew ){
    pNew->p = pPtr;
    pNew->t = *pToken;
    pNew->pNext = pParse->pRename;
    pParse->pRename = pNew;
  }

  return pPtr;
}
