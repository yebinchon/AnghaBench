
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__** apHash; int nHash; } ;
struct TYPE_5__ {struct TYPE_5__* pHashNext; int iPg; } ;
typedef TYPE_1__ Page ;
typedef TYPE_2__ FileSystem ;


 int fsHashKey (int ,int ) ;

__attribute__((used)) static void fsPageRemoveFromHash(FileSystem *pFS, Page *pPg){
  int iHash;
  Page **pp;

  iHash = fsHashKey(pFS->nHash, pPg->iPg);
  for(pp=&pFS->apHash[iHash]; *pp!=pPg; pp=&(*pp)->pHashNext);
  *pp = pPg->pHashNext;
  pPg->pHashNext = 0;
}
