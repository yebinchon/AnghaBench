
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_2__ {scalar_t__ eMode; } ;
typedef TYPE_1__ LsmDb ;


 scalar_t__ LSMTEST_MODE_SINGLETHREAD ;
 scalar_t__ tdb_lsm (int *) ;

int tdb_lsm_multithread(TestDb *pDb){
  int ret = 0;
  if( tdb_lsm(pDb) ){
    ret = ((LsmDb*)pDb)->eMode!=LSMTEST_MODE_SINGLETHREAD;
  }
  return ret;
}
