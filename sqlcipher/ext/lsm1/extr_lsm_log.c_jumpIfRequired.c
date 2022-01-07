
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_10__ {int pFS; } ;
typedef TYPE_2__ lsm_db ;
typedef void* i64 ;
struct TYPE_12__ {int n; } ;
struct TYPE_9__ {scalar_t__ iStart; void* iEnd; } ;
struct TYPE_11__ {scalar_t__ iOff; scalar_t__ iRegion1End; int iCksumBuf; TYPE_4__ buf; void* iRegion2Start; TYPE_1__ jump; } ;
typedef TYPE_3__ LogWriter ;


 scalar_t__ LSM_LOG_JUMP ;
 scalar_t__ LSM_LOG_PAD1 ;
 scalar_t__ LSM_LOG_PAD2 ;
 int LSM_OK ;
 int assert (int) ;
 int logUpdateCksum (TYPE_3__*,int) ;
 int lsmFsWriteLog (int ,scalar_t__,TYPE_4__*) ;
 int lsmStringBinAppend (TYPE_4__*,scalar_t__*,int) ;
 int lsmVarintPut64 (scalar_t__*,void*) ;

__attribute__((used)) static int jumpIfRequired(
  lsm_db *pDb,
  LogWriter *pLog,
  int nReq,
  int *pbJump
){






  if( (pLog->jump.iStart > (pLog->iOff + pLog->buf.n))
   && (pLog->jump.iStart < (pLog->iOff + pLog->buf.n + (nReq + 17)))
  ){
    int rc;
    i64 iJump;
    u8 aJump[10];
    int nJump;
    int nPad;


    iJump = pLog->jump.iEnd+1;
    aJump[0] = LSM_LOG_JUMP;
    nJump = 1 + lsmVarintPut64(&aJump[1], iJump);





    nPad = (pLog->buf.n + nJump) % 8;
    if( nPad ){
      u8 aPad[7] = {0,0,0,0,0,0,0};
      nPad = 8-nPad;
      if( nPad==1 ){
        aPad[0] = LSM_LOG_PAD1;
      }else{
        aPad[0] = LSM_LOG_PAD2;
        aPad[1] = (u8)(nPad-2);
      }
      rc = lsmStringBinAppend(&pLog->buf, aPad, nPad);
      if( rc!=LSM_OK ) return rc;
    }





    rc = lsmStringBinAppend(&pLog->buf, aJump, nJump);
    if( rc!=LSM_OK ) return rc;
    assert( (pLog->buf.n % 8)==0 );
    rc = lsmFsWriteLog(pDb->pFS, pLog->iOff, &pLog->buf);
    if( rc!=LSM_OK ) return rc;
    logUpdateCksum(pLog, pLog->buf.n);
    pLog->iRegion1End = (pLog->iOff + pLog->buf.n);
    pLog->iRegion2Start = iJump;
    pLog->iOff = iJump;
    pLog->iCksumBuf = pLog->buf.n = 0;
    if( pbJump ) *pbJump = 1;
  }

  return LSM_OK;
}
