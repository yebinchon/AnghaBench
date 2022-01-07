
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ i64 ;
struct TYPE_5__ {scalar_t__ pCompress; scalar_t__ nMap; int pDb; TYPE_1__* pMapped; int * pMap; int fdDb; int pEnv; } ;
struct TYPE_4__ {int aData; struct TYPE_4__* pMappedNext; } ;
typedef TYPE_1__ Page ;
typedef TYPE_2__ FileSystem ;


 int LSM_OK ;
 int PAGE_HASPREV ;
 int assert (int) ;
 int lsmEnvRemap (int ,int ,scalar_t__,int **,scalar_t__*) ;
 int lsmSortedRemap (int ) ;

__attribute__((used)) static void fsGrowMapping(
  FileSystem *pFS,
  i64 iSz,
  int *pRc
){
  assert( pFS->pCompress==0 );
  assert( PAGE_HASPREV==4 );

  if( *pRc==LSM_OK && iSz>pFS->nMap ){
    int rc;
    u8 *aOld = pFS->pMap;
    rc = lsmEnvRemap(pFS->pEnv, pFS->fdDb, iSz, &pFS->pMap, &pFS->nMap);
    if( rc==LSM_OK && pFS->pMap!=aOld ){
      Page *pFix;
      i64 iOff = (u8 *)pFS->pMap - aOld;
      for(pFix=pFS->pMapped; pFix; pFix=pFix->pMappedNext){
        pFix->aData += iOff;
      }
      lsmSortedRemap(pFS->pDb);
    }
    *pRc = rc;
  }
}
