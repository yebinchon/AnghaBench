
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_3__ {int bCrashed; } ;
typedef TYPE_1__ LsmDb ;


 int doSystemCrash (TYPE_1__*) ;
 scalar_t__ tdb_lsm (int *) ;

void tdb_lsm_system_crash(TestDb *pDb){
  if( tdb_lsm(pDb) ){
    LsmDb *p = (LsmDb *)pDb;
    p->bCrashed = 1;
    doSystemCrash(p);
  }
}
