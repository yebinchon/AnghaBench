
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nMerge; int pFS; scalar_t__ pCsr; scalar_t__ nTransOpen; } ;
typedef TYPE_1__ lsm_db ;
typedef int i64 ;


 int LSM_MISUSE_BKPT ;
 int doLsmWork (TYPE_1__*,int,int,int*) ;
 int lsmFsPageSize (int ) ;
 int lsmFsPurgeCache (int ) ;

int lsm_work(lsm_db *pDb, int nMerge, int nKB, int *pnWrite){
  int rc;
  int nPgsz;
  int nPage;
  int nWrite = 0;



  if( pDb->nTransOpen || pDb->pCsr ) return LSM_MISUSE_BKPT;
  if( nMerge<=0 ) nMerge = pDb->nMerge;

  lsmFsPurgeCache(pDb->pFS);


  nPgsz = lsmFsPageSize(pDb->pFS);
  if( nKB>=0 ){
    nPage = ((i64)nKB * 1024 + nPgsz - 1) / nPgsz;
  }else{
    nPage = -1;
  }

  rc = doLsmWork(pDb, nMerge, nPage, &nWrite);

  if( pnWrite ){

    *pnWrite = (int)(((i64)nWrite * 1024 + nPgsz - 1) / nPgsz);
  }
  return rc;
}
