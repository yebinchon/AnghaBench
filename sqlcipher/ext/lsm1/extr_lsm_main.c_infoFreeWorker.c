
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;


 int LSM_BUSY ;
 int lsmFinishWork (int *,int ,int*) ;

__attribute__((used)) static void infoFreeWorker(lsm_db *pDb, int bUnlock){
  if( bUnlock ){
    int rcdummy = LSM_BUSY;
    lsmFinishWork(pDb, 0, &rcdummy);
  }
}
