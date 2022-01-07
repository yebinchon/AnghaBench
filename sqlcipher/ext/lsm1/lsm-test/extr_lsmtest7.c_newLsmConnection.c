
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;


 int LSM_CONFIG_BLOCK_SIZE ;
 int LSM_CONFIG_PAGE_SIZE ;
 int lsm_config (int *,int ,int*) ;
 int lsm_new (int ,int **) ;
 int lsm_open (int *,char*) ;
 int tdb_lsm_env () ;

__attribute__((used)) static lsm_db *newLsmConnection(
  const char *zDb,
  int nPgsz,
  int nBlksz,
  int *pRc
){
  lsm_db *db = 0;
  if( *pRc==0 ){
    int n1 = nPgsz;
    int n2 = nBlksz;
    *pRc = lsm_new(tdb_lsm_env(), &db);
    if( *pRc==0 ){
      if( n1 ) lsm_config(db, LSM_CONFIG_PAGE_SIZE, &n1);
      if( n2 ) lsm_config(db, LSM_CONFIG_BLOCK_SIZE, &n2);
      *pRc = lsm_open(db, "testdb.lsm");
    }
  }
  return db;
}
