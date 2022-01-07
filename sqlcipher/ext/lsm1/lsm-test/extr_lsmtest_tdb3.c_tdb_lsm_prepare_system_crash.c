
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_2__ {int bPrepareCrash; } ;
typedef TYPE_1__ LsmDb ;


 scalar_t__ tdb_lsm (int *) ;

void tdb_lsm_prepare_system_crash(TestDb *pDb){
  if( tdb_lsm(pDb) ){
    LsmDb *p = (LsmDb *)pDb;
    p->bPrepareCrash = 1;
  }
}
