
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lsm_db ;
struct TYPE_6__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ TestDb ;
struct TYPE_7__ {int * db; } ;
struct TYPE_5__ {scalar_t__ xClose; } ;
typedef TYPE_3__ LsmDb ;


 scalar_t__ test_lsm_close ;

lsm_db *tdb_lsm(TestDb *pDb){
  if( pDb->pMethods->xClose==test_lsm_close ){
    return ((LsmDb *)pDb)->db;
  }
  return 0;
}
