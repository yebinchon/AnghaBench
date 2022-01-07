
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_2__ {int db; } ;
typedef TYPE_1__ LsmDb ;


 int LSM_CONFIG_SAFETY ;
 int LSM_SAFETY_FULL ;
 int LSM_SAFETY_NORMAL ;
 int LSM_SAFETY_OFF ;
 int assert (int) ;
 int lsm_config (int ,int ,int*) ;
 scalar_t__ tdb_lsm (int *) ;

void tdb_lsm_safety(TestDb *pDb, int eMode){
  assert( eMode==LSM_SAFETY_OFF
       || eMode==LSM_SAFETY_NORMAL
       || eMode==LSM_SAFETY_FULL
  );
  if( tdb_lsm(pDb) ){
    int iParam = eMode;
    LsmDb *p = (LsmDb *)pDb;
    lsm_config(p->db, LSM_CONFIG_SAFETY, &iParam);
  }
}
