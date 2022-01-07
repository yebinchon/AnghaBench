
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ bUseLog; TYPE_3__* pLogWriter; } ;
typedef TYPE_2__ lsm_db ;
struct TYPE_11__ {int nBuf; int cksum1; int cksum0; scalar_t__ iOff; int aBuf; } ;
struct TYPE_8__ {int n; int * z; } ;
struct TYPE_10__ {int iCksumBuf; int cksum1; int cksum0; TYPE_1__ buf; scalar_t__ iOff; } ;
typedef TYPE_3__ LogWriter ;
typedef TYPE_4__ LogMark ;


 int assert (int) ;
 int logUpdateCksum (TYPE_3__*,int) ;
 int memcpy (int ,int *,int) ;

void lsmLogTell(
  lsm_db *pDb,
  LogMark *pMark
){
  LogWriter *pLog;
  int nCksum;

  if( pDb->bUseLog==0 ) return;
  pLog = pDb->pLogWriter;
  nCksum = pLog->buf.n & 0xFFFFFFF8;
  logUpdateCksum(pLog, nCksum);
  assert( pLog->iCksumBuf==nCksum );
  pMark->nBuf = pLog->buf.n - nCksum;
  memcpy(pMark->aBuf, &pLog->buf.z[nCksum], pMark->nBuf);

  pMark->iOff = pLog->iOff + pLog->buf.n;
  pMark->cksum0 = pLog->cksum0;
  pMark->cksum1 = pLog->cksum1;
}
