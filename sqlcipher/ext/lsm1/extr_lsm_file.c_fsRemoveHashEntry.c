
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__** apHash; int nHash; } ;
struct TYPE_6__ {scalar_t__ iPg; scalar_t__ nRef; int flags; struct TYPE_6__* pHashNext; } ;
typedef TYPE_1__ Page ;
typedef scalar_t__ LsmPgno ;
typedef TYPE_2__ FileSystem ;


 int PAGE_FREE ;
 int assert (int) ;
 int fsHashKey (int ,scalar_t__) ;
 int fsPageRemoveFromHash (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void fsRemoveHashEntry(FileSystem *pFS, LsmPgno iPg){
  Page *p;
  int iHash = fsHashKey(pFS->nHash, iPg);

  for(p=pFS->apHash[iHash]; p && p->iPg!=iPg; p=p->pHashNext);

  if( p ){
    assert( p->nRef==0 || (p->flags & PAGE_FREE)==0 );
    fsPageRemoveFromHash(pFS, p);
    p->iPg = 0;
    iHash = fsHashKey(pFS->nHash, 0);
    p->pHashNext = pFS->apHash[iHash];
    pFS->apHash[iHash] = p;
  }
}
