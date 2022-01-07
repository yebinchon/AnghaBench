
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int n; int * z; } ;
struct TYPE_5__ {int iCksumBuf; int cksum1; int cksum0; TYPE_1__ buf; } ;
typedef TYPE_2__ LogWriter ;


 int assert (int) ;
 int logCksumUnaligned (int *,int,int *,int *) ;

__attribute__((used)) static void logUpdateCksum(LogWriter *pLog, int nBuf){
  assert( (pLog->iCksumBuf % 8)==0 );
  assert( pLog->iCksumBuf<=nBuf );
  assert( (nBuf % 8)==0 || nBuf==pLog->buf.n );
  if( nBuf>pLog->iCksumBuf ){
    logCksumUnaligned(
        &pLog->buf.z[pLog->iCksumBuf], nBuf-pLog->iCksumBuf,
        &pLog->cksum0, &pLog->cksum1
    );
  }
  pLog->iCksumBuf = nBuf;
}
