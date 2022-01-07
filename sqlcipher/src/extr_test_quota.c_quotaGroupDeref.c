
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ iLimit; int pArg; int (* xDestroy ) (int ) ;TYPE_1__** ppPrev; TYPE_1__* pNext; } ;
typedef TYPE_2__ quotaGroup ;
struct TYPE_7__ {struct TYPE_7__** ppPrev; } ;


 scalar_t__ quotaGroupOpenFileCount (TYPE_2__*) ;
 int quotaRemoveAllFiles (TYPE_2__*) ;
 int sqlite3_free (TYPE_2__*) ;
 int stub1 (int ) ;

__attribute__((used)) static void quotaGroupDeref(quotaGroup *pGroup){
  if( pGroup->iLimit==0 && quotaGroupOpenFileCount(pGroup)==0 ){
    quotaRemoveAllFiles(pGroup);
    *pGroup->ppPrev = pGroup->pNext;
    if( pGroup->pNext ) pGroup->pNext->ppPrev = pGroup->ppPrev;
    if( pGroup->xDestroy ) pGroup->xDestroy(pGroup->pArg);
    sqlite3_free(pGroup);
  }
}
