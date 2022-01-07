
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;
typedef int TestDb ;


 int * tdb_lsm (int *) ;
 int tdb_lsm_config_str (int *,char*) ;

__attribute__((used)) static lsm_db *configure_lsm_db(TestDb *pDb){
  lsm_db *pLsm;
  pLsm = tdb_lsm(pDb);
  if( pLsm ){
    tdb_lsm_config_str(pDb, "mmap=1 autowork=1 automerge=4 worker_automerge=4");
  }
  return pLsm;
}
