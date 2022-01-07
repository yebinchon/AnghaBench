
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bReadonly; TYPE_2__* pFS; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_6__ {scalar_t__ fdLog; } ;
typedef TYPE_2__ FileSystem ;


 int LSM_IOERR_NOENT ;
 int LSM_OK ;
 scalar_t__ fsOpenFile (TYPE_2__*,int ,int,int*) ;

int lsmFsOpenLog(lsm_db *db, int *pbOpen){
  int rc = LSM_OK;
  FileSystem *pFS = db->pFS;

  if( 0==pFS->fdLog ){
    pFS->fdLog = fsOpenFile(pFS, db->bReadonly, 1, &rc);

    if( rc==LSM_IOERR_NOENT && db->bReadonly ){
      rc = LSM_OK;
    }
  }

  if( pbOpen ) *pbOpen = (pFS->fdLog!=0);
  return rc;
}
