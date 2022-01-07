
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lsm_db ;


 int LSM_OK ;
 int freelistAppend (int *,int,int ) ;
 int lsmLogMessage (int *,int,char*,int) ;

int lsmBlockRefree(lsm_db *pDb, int iBlk){
  int rc = LSM_OK;





  rc = freelistAppend(pDb, iBlk, 0);
  return rc;
}
