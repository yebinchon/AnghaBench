
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pFS; } ;
typedef TYPE_1__ lsm_db ;
typedef scalar_t__ i64 ;
typedef int MetaPage ;


 int LSM_OK ;
 int ckptLoadEmpty (TYPE_1__*) ;
 scalar_t__ ckptLoadId (int *) ;
 int ckptTryLoad (TYPE_1__*,int *,int,int*) ;
 int lsmFsMetaPageGet (int ,int ,int,int **) ;
 int lsmFsMetaPageRelease (int *) ;

int lsmCheckpointRecover(lsm_db *pDb){
  int rc = LSM_OK;
  i64 iId1;
  i64 iId2;
  int bLoaded = 0;
  int cmp;
  MetaPage *apPg[2] = {0, 0};

  rc = lsmFsMetaPageGet(pDb->pFS, 0, 1, &apPg[0]);
  if( rc==LSM_OK ) rc = lsmFsMetaPageGet(pDb->pFS, 0, 2, &apPg[1]);

  iId1 = ckptLoadId(apPg[0]);
  iId2 = ckptLoadId(apPg[1]);
  cmp = (iId2 > iId1);
  bLoaded = ckptTryLoad(pDb, apPg[cmp?1:0], (cmp?2:1), &rc);
  if( bLoaded==0 ){
    bLoaded = ckptTryLoad(pDb, apPg[cmp?0:1], (cmp?1:2), &rc);
  }



  if( bLoaded==0 ){
    ckptLoadEmpty(pDb);
  }

  lsmFsMetaPageRelease(apPg[0]);
  lsmFsMetaPageRelease(apPg[1]);

  return rc;
}
