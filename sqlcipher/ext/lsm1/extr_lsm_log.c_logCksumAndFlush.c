
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int pFS; TYPE_2__* pLogWriter; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_8__ {size_t n; int * z; } ;
struct TYPE_7__ {int iOff; int iCksumBuf; TYPE_3__ buf; int cksum1; int cksum0; } ;
typedef TYPE_2__ LogWriter ;


 int logUpdateCksum (TYPE_2__*,size_t) ;
 int lsmFsWriteLog (int ,int,TYPE_3__*) ;
 int lsmPutU32 (int *,int ) ;

__attribute__((used)) static int logCksumAndFlush(lsm_db *pDb){
  int rc;
  LogWriter *pLog = pDb->pLogWriter;


  logUpdateCksum(pLog, pLog->buf.n);
  lsmPutU32((u8 *)&pLog->buf.z[pLog->buf.n], pLog->cksum0);
  pLog->buf.n += 4;
  lsmPutU32((u8 *)&pLog->buf.z[pLog->buf.n], pLog->cksum1);
  pLog->buf.n += 4;


  rc = lsmFsWriteLog(pDb->pFS, pLog->iOff, &pLog->buf);
  pLog->iOff += pLog->buf.n;
  pLog->iCksumBuf = pLog->buf.n = 0;

  return rc;
}
