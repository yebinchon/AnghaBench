
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_pcache ;
struct TYPE_2__ {int nPage; int pGroup; } ;
typedef TYPE_1__ PCache1 ;


 int pcache1EnterMutex (int ) ;
 int pcache1LeaveMutex (int ) ;

__attribute__((used)) static int pcache1Pagecount(sqlite3_pcache *p){
  int n;
  PCache1 *pCache = (PCache1*)p;
  pcache1EnterMutex(pCache->pGroup);
  n = pCache->nPage;
  pcache1LeaveMutex(pCache->pGroup);
  return n;
}
