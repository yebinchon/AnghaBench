
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__** apHash; int nHash; } ;
struct TYPE_5__ {scalar_t__ iPg; struct TYPE_5__* pHashNext; } ;
typedef TYPE_1__ Page ;
typedef scalar_t__ LsmPgno ;
typedef TYPE_2__ FileSystem ;


 int fsHashKey (int ,scalar_t__) ;

__attribute__((used)) static Page *fsPageFindInHash(FileSystem *pFS, LsmPgno iPg, int *piHash){
  Page *p;
  int iHash = fsHashKey(pFS->nHash, iPg);

  if( piHash ) *piHash = iHash;
  for(p=pFS->apHash[iHash]; p; p=p->pHashNext){
    if( p->iPg==iPg) break;
  }
  return p;
}
