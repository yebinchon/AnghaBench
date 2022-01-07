
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;


 int LSM_CONFIG_BLOCK_SIZE ;
 int LSM_CONFIG_PAGE_SIZE ;
 int lsm_config (int *,int ,int*) ;
 int testCompareInt (int,int,int*) ;

__attribute__((used)) static void testPagesize(lsm_db *db, int nPgsz, int nBlksz, int *pRc){
  if( *pRc==0 ){
    int n1 = 0;
    int n2 = 0;

    lsm_config(db, LSM_CONFIG_PAGE_SIZE, &n1);
    lsm_config(db, LSM_CONFIG_BLOCK_SIZE, &n2);

    testCompareInt(n1, nPgsz, pRc);
    testCompareInt(n2, nBlksz, pRc);
  }
}
