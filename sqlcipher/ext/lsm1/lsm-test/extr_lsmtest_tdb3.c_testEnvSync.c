
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
typedef int lsm_file ;
struct TYPE_9__ {int (* xSync ) (int ) ;} ;
typedef TYPE_2__ lsm_env ;
struct TYPE_12__ {int nSector; TYPE_1__* aSector; } ;
struct TYPE_11__ {int bCrashed; scalar_t__ nAutoCrash; int pWriteCtx; int (* xWriteHook ) (int ,size_t,int ,int ,int) ;scalar_t__ bPrepareCrash; TYPE_5__* aFile; } ;
struct TYPE_10__ {size_t bLog; int pReal; TYPE_4__* pDb; } ;
struct TYPE_8__ {scalar_t__ aOld; } ;
typedef TYPE_3__ LsmFile ;
typedef TYPE_4__ LsmDb ;
typedef TYPE_5__ FileData ;


 int LSM_IOERR ;
 int doSystemCrash (TYPE_4__*) ;
 int gettimeofday (struct timeval*,int ) ;
 int stub1 (int ) ;
 int stub2 (int ,size_t,int ,int ,int) ;
 int stub3 (int ) ;
 TYPE_2__* tdb_lsm_env () ;
 int testFree (scalar_t__) ;

__attribute__((used)) static int testEnvSync(lsm_file *pFile){
  lsm_env *pRealEnv = tdb_lsm_env();
  LsmFile *p = (LsmFile *)pFile;
  LsmDb *pDb = p->pDb;
  FileData *pData = &pDb->aFile[p->bLog];
  int i;

  if( pDb->bCrashed ) return LSM_IOERR;

  if( pDb->nAutoCrash ){
    pDb->nAutoCrash--;
    if( pDb->nAutoCrash==0 ){
      doSystemCrash(pDb);
      pDb->bCrashed = 1;
      return LSM_IOERR;
    }
  }

  if( pDb->bPrepareCrash ){
    for(i=0; i<pData->nSector; i++){
      testFree(pData->aSector[i].aOld);
      pData->aSector[i].aOld = 0;
    }
  }

  if( pDb->xWriteHook ){
    int rc;
    int nUs;
    struct timeval t1;
    struct timeval t2;

    gettimeofday(&t1, 0);
    rc = pRealEnv->xSync(p->pReal);
    gettimeofday(&t2, 0);

    nUs = (t2.tv_sec - t1.tv_sec) * 1000000 + (t2.tv_usec - t1.tv_usec);
    pDb->xWriteHook(pDb->pWriteCtx, p->bLog, 0, 0, nUs);
    return rc;
  }

  return pRealEnv->xSync(p->pReal);
}
