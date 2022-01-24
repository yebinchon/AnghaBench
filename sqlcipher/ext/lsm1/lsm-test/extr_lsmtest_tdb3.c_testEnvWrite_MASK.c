#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct timeval {int tv_sec; int tv_usec; } ;
typedef  int lsm_i64 ;
typedef  int /*<<< orphan*/  lsm_file ;
struct TYPE_9__ {int (* xWrite ) (int /*<<< orphan*/ ,int,void*,int) ;int /*<<< orphan*/  (* xRead ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_1__ lsm_env ;
struct TYPE_13__ {int nSector; TYPE_4__* aSector; } ;
struct TYPE_12__ {scalar_t__ aOld; } ;
struct TYPE_11__ {int szSector; int /*<<< orphan*/  pWriteCtx; int /*<<< orphan*/  (* xWriteHook ) (int /*<<< orphan*/ ,size_t,int,int,int) ;TYPE_5__* aFile; scalar_t__ bPrepareCrash; scalar_t__ bCrashed; } ;
struct TYPE_10__ {size_t bLog; int /*<<< orphan*/  pReal; TYPE_3__* pDb; } ;
typedef  TYPE_2__ LsmFile ;
typedef  TYPE_3__ LsmDb ;
typedef  TYPE_4__ FileSector ;
typedef  TYPE_5__ FileData ;

/* Variables and functions */
 int LSM_IOERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t,int,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,void*,int) ; 
 TYPE_1__* FUNC7 () ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC10(lsm_file *pFile, lsm_i64 iOff, void *pData, int nData){
  lsm_env *pRealEnv = FUNC7();
  LsmFile *p = (LsmFile *)pFile;
  LsmDb *pDb = p->pDb;

  if( pDb->bCrashed ) return LSM_IOERR;

  if( pDb->bPrepareCrash ){
    FileData *pData2 = &pDb->aFile[p->bLog];
    int iFirst;                 
    int iLast;
    int iSector;

    iFirst = (int)(iOff / pDb->szSector);
    iLast =  (int)((iOff + nData - 1) / pDb->szSector);

    if( pData2->nSector<(iLast+1) ){
      int nNew = ( ((iLast + 1) + 63) / 64 ) * 64;
      FUNC0( nNew>iLast );
      pData2->aSector = (FileSector *)FUNC9(
          pData2->aSector, nNew*sizeof(FileSector)
      );
      FUNC2(&pData2->aSector[pData2->nSector], 
          0, (nNew - pData2->nSector) * sizeof(FileSector)
      );
      pData2->nSector = nNew;
    }

    for(iSector=iFirst; iSector<=iLast; iSector++){
      if( pData2->aSector[iSector].aOld==0 ){
        u8 *aOld = (u8 *)FUNC8(pDb->szSector);
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

    FUNC1(&t1, 0);
    FUNC0( nData>0 );
    rc = pRealEnv->xWrite(p->pReal, iOff, pData, nData);
    FUNC1(&t2, 0);

    nUs = (t2.tv_sec - t1.tv_sec) * 1000000 + (t2.tv_usec - t1.tv_usec);
    pDb->xWriteHook(pDb->pWriteCtx, p->bLog, iOff, nData, nUs);
    return rc;
  }

  return pRealEnv->xWrite(p->pReal, iOff, pData, nData);
}