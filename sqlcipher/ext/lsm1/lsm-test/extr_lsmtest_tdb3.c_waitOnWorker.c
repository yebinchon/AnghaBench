
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int db; } ;
typedef TYPE_1__ LsmDb ;


 int LSM_CONFIG_AUTOFLUSH ;
 int LSM_INFO_TREE_SIZE ;
 int LSM_OK ;
 int lsm_config (int ,int ,int*) ;
 int lsm_info (int ,int ,int*,int*) ;
 int mt_signal_worker (TYPE_1__*,int ) ;
 int printf (char*,int) ;
 int usleep (int) ;

__attribute__((used)) static int waitOnWorker(LsmDb *pDb){
  int rc;
  int nLimit = -1;
  int nSleep = 0;

  rc = lsm_config(pDb->db, LSM_CONFIG_AUTOFLUSH, &nLimit);
  do {
    int nOld, nNew, rc2;
    rc2 = lsm_info(pDb->db, LSM_INFO_TREE_SIZE, &nOld, &nNew);
    if( rc2!=LSM_OK ) return rc2;
    if( nOld==0 || nNew<(nLimit/2) ) break;



    usleep(5000);
    nSleep += 5;
  }while( 1 );





  return rc;
}
