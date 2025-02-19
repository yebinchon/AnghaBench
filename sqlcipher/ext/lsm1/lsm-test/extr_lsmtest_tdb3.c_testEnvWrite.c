
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct timeval {int tv_sec; int tv_usec; } ;
typedef int lsm_i64 ;
typedef int lsm_file ;
struct TYPE_9__ {int (* xWrite ) (int ,int,void*,int) ;int (* xRead ) (int ,int,int *,int) ;} ;
typedef TYPE_1__ lsm_env ;
struct TYPE_13__ {int nSector; TYPE_4__* aSector; } ;
struct TYPE_12__ {scalar_t__ aOld; } ;
struct TYPE_11__ {int szSector; int pWriteCtx; int (* xWriteHook ) (int ,size_t,int,int,int) ;TYPE_5__* aFile; scalar_t__ bPrepareCrash; scalar_t__ bCrashed; } ;
struct TYPE_10__ {size_t bLog; int pReal; TYPE_3__* pDb; } ;
typedef TYPE_2__ LsmFile ;
typedef TYPE_3__ LsmDb ;
typedef TYPE_4__ FileSector ;
typedef TYPE_5__ FileData ;


 int LSM_IOERR ;
 int assert (int) ;
 int gettimeofday (struct timeval*,int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int stub1 (int ,int,int *,int) ;
 int stub2 (int ,int,void*,int) ;
 int stub3 (int ,size_t,int,int,int) ;
 int stub4 (int ,int,void*,int) ;
 TYPE_1__* tdb_lsm_env () ;
 scalar_t__ testMalloc (int) ;
 scalar_t__ testRealloc (TYPE_4__*,int) ;

__attribute__((used)) static int testEnvWrite(lsm_file *pFile, lsm_i64 iOff, void *pData, int nData){
  lsm_env *pRealEnv = tdb_lsm_env();
  LsmFile *p = (LsmFile *)pFile;
  LsmDb *pDb = p->pDb;

  if( pDb->bCrashed ) return LSM_IOERR;

  if( pDb->bPrepareCrash ){
    FileData *pData2 = &pDb->aFile[p->bLog];
    int iFirst;
    int iLast;
    int iSector;

    iFirst = (int)(iOff / pDb->szSector);
    iLast = (int)((iOff + nData - 1) / pDb->szSector);

    if( pData2->nSector<(iLast+1) ){
      int nNew = ( ((iLast + 1) + 63) / 64 ) * 64;
      assert( nNew>iLast );
      pData2->aSector = (FileSector *)testRealloc(
          pData2->aSector, nNew*sizeof(FileSector)
      );
      memset(&pData2->aSector[pData2->nSector],
          0, (nNew - pData2->nSector) * sizeof(FileSector)
      );
      pData2->nSector = nNew;
    }

    for(iSector=iFirst; iSector<=iLast; iSector++){
      if( pData2->aSector[iSector].aOld==0 ){
        u8 *aOld = (u8 *)testMalloc(pDb->szSector);
        pRealEnv->xRead(
            p->pReal, (lsm_i64)iSector*pDb->szSector, aOld, pDb->szSector
        );
        pData2->aSector[iSector].aOld = aOld;
      }
    }
  }

  if( pDb->xWriteHook ){
    int rc;
    int nUs;
    struct timeval t1;
    struct timeval t2;

    gettimeofday(&t1, 0);
    assert( nData>0 );
    rc = pRealEnv->xWrite(p->pReal, iOff, pData, nData);
    gettimeofday(&t2, 0);

    nUs = (t2.tv_sec - t1.tv_sec) * 1000000 + (t2.tv_usec - t1.tv_usec);
    pDb->xWriteHook(pDb->pWriteCtx, p->bLog, iOff, nData, nUs);
    return rc;
  }

  return pRealEnv->xWrite(p->pReal, iOff, pData, nData);
}
