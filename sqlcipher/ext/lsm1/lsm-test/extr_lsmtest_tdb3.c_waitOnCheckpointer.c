
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lsm_db ;
struct TYPE_4__ {int nMtMaxCkpt; scalar_t__ eMode; } ;
typedef TYPE_1__ LsmDb ;


 scalar_t__ LSMTEST_MODE_BACKGROUND_CKPT ;
 int LSM_INFO_CHECKPOINT_SIZE ;
 int LSM_OK ;
 int lsm_info (int *,int ,int*) ;
 int mt_signal_worker (TYPE_1__*,int) ;
 int printf (char*,int) ;
 int usleep (int) ;

__attribute__((used)) static int waitOnCheckpointer(LsmDb *pDb, lsm_db *db){
  int nSleep = 0;
  int nKB;
  int rc;

  do {
    nKB = 0;
    rc = lsm_info(db, LSM_INFO_CHECKPOINT_SIZE, &nKB);
    if( rc!=LSM_OK || nKB<pDb->nMtMaxCkpt ) break;





    usleep(5000);
    nSleep += 5;
  }while( 1 );





  return rc;
}
