
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int pEnv; int pFS; } ;
typedef TYPE_2__ lsm_db ;
struct TYPE_13__ {scalar_t__ n; } ;
struct TYPE_12__ {int cksum1; int cksum0; TYPE_1__* aRegion; } ;
struct TYPE_11__ {scalar_t__ iBuf; scalar_t__ iCksumBuf; TYPE_5__ buf; int cksum1; int cksum0; int iOff; int pFS; } ;
struct TYPE_9__ {int iStart; } ;
typedef TYPE_3__ LogReader ;
typedef TYPE_4__ DbLog ;


 int lsmStringInit (TYPE_5__*,int ) ;

__attribute__((used)) static void logReaderInit(
  lsm_db *pDb,
  DbLog *pLog,
  int bInitBuf,
  LogReader *p
){
  p->pFS = pDb->pFS;
  p->iOff = pLog->aRegion[2].iStart;
  p->cksum0 = pLog->cksum0;
  p->cksum1 = pLog->cksum1;
  if( bInitBuf ){ lsmStringInit(&p->buf, pDb->pEnv); }
  p->buf.n = 0;
  p->iCksumBuf = 0;
  p->iBuf = 0;
}
