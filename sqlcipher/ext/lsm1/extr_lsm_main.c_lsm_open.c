
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ bReadonly; scalar_t__ pShmhdr; int pEnv; int aSnapshot; int pFS; scalar_t__ pDatabase; } ;
typedef TYPE_1__ lsm_db ;


 int LSM_MISUSE ;
 int LSM_OK ;
 int assert (int) ;
 int assertRwclientLockValue (TYPE_1__*) ;
 int getFullpathname (int ,char const*,char**) ;
 int lsmCheckpointBlksz (int ) ;
 int lsmCheckpointLoad (TYPE_1__*,int ) ;
 int lsmCheckpointPgsz (int ) ;
 int lsmDbDatabaseConnect (TYPE_1__*,char*) ;
 int lsmFree (int ,char*) ;
 int lsmFsSetBlockSize (int ,int ) ;
 int lsmFsSetPageSize (int ,int ) ;

int lsm_open(lsm_db *pDb, const char *zFilename){
  int rc;

  if( pDb->pDatabase ){
    rc = LSM_MISUSE;
  }else{
    char *zFull;
    rc = getFullpathname(pDb->pEnv, zFilename, &zFull);
    assert( rc==LSM_OK || zFull==0 );


    if( rc==LSM_OK ){
      rc = lsmDbDatabaseConnect(pDb, zFull);
    }

    if( pDb->bReadonly==0 ){





      if( rc==LSM_OK && LSM_OK==(rc = lsmCheckpointLoad(pDb, 0)) ){
        lsmFsSetPageSize(pDb->pFS, lsmCheckpointPgsz(pDb->aSnapshot));
        lsmFsSetBlockSize(pDb->pFS, lsmCheckpointBlksz(pDb->aSnapshot));
      }
    }

    lsmFree(pDb->pEnv, zFull);
    assertRwclientLockValue(pDb);
  }

  assert( pDb->bReadonly==0 || pDb->bReadonly==1 );
  assert( rc!=LSM_OK || (pDb->pShmhdr==0)==(pDb->bReadonly==1) );

  return rc;
}
