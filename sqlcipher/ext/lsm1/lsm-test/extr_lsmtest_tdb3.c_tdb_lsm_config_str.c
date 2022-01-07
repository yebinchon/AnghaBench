
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_5__ {int nWorker; TYPE_1__* aWorker; int db; } ;
struct TYPE_4__ {int pWorker; } ;
typedef TYPE_2__ LsmDb ;


 scalar_t__ tdb_lsm (int *) ;
 int test_lsm_config_str (TYPE_2__*,int ,int,char const*,int ) ;

int tdb_lsm_config_str(TestDb *pDb, const char *zStr){
  int rc = 0;
  if( tdb_lsm(pDb) ){



    LsmDb *pLsm = (LsmDb *)pDb;

    rc = test_lsm_config_str(pLsm, pLsm->db, 0, zStr, 0);





  }
  return rc;
}
