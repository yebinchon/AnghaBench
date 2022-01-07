
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* xFileid ) (int ,void*,int*) ;} ;
typedef TYPE_1__ lsm_env ;
struct TYPE_8__ {TYPE_3__* pFS; TYPE_1__* pEnv; } ;
typedef TYPE_2__ lsm_db ;
struct TYPE_9__ {int fdDb; } ;
typedef TYPE_3__ FileSystem ;


 int LSM_OK ;
 int lsmFree (TYPE_1__*,void*) ;
 void* lsmMallocZeroRc (TYPE_1__*,int,int*) ;
 int stub1 (int ,void*,int*) ;
 int stub2 (int ,void*,int*) ;

int lsmFsFileid(lsm_db *pDb, void **ppId, int *pnId){
  lsm_env *pEnv = pDb->pEnv;
  FileSystem *pFS = pDb->pFS;
  int rc;
  int nId = 0;
  void *pId;

  rc = pEnv->xFileid(pFS->fdDb, 0, &nId);
  pId = lsmMallocZeroRc(pEnv, nId, &rc);
  if( rc==LSM_OK ) rc = pEnv->xFileid(pFS->fdDb, pId, &nId);

  if( rc!=LSM_OK ){
    lsmFree(pEnv, pId);
    pId = 0;
    nId = 0;
  }

  *ppId = pId;
  *pnId = nId;
  return rc;
}
