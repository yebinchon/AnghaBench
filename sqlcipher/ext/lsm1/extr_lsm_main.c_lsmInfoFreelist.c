
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int pEnv; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_10__ {char* z; } ;
typedef int Snapshot ;
typedef TYPE_2__ LsmString ;


 int LSM_OK ;
 int infoFreeWorker (TYPE_1__*,int) ;
 int infoFreelistCb ;
 int infoGetWorker (TYPE_1__*,int **,int*) ;
 int lsmFree (int ,char*) ;
 int lsmStringInit (TYPE_2__*,int ) ;
 int lsmWalkFreelist (TYPE_1__*,int ,int ,TYPE_2__*) ;

int lsmInfoFreelist(lsm_db *pDb, char **pzOut){
  Snapshot *pWorker;
  int bUnlock = 0;
  LsmString s;
  int rc;


  rc = infoGetWorker(pDb, &pWorker, &bUnlock);
  if( rc!=LSM_OK ) return rc;

  lsmStringInit(&s, pDb->pEnv);
  rc = lsmWalkFreelist(pDb, 0, infoFreelistCb, &s);
  if( rc!=LSM_OK ){
    lsmFree(pDb->pEnv, s.z);
  }else{
    *pzOut = s.z;
  }


  infoFreeWorker(pDb, bUnlock);
  return rc;
}
