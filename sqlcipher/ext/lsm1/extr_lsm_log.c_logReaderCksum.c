
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_5__ {int * z; } ;
struct TYPE_6__ {int iBuf; int iCksumBuf; scalar_t__ cksum0; scalar_t__ cksum1; TYPE_1__ buf; } ;
typedef int LsmString ;
typedef TYPE_2__ LogReader ;


 int LSM_OK ;
 int assert (int) ;
 int logCksumUnaligned (int *,int,scalar_t__*,scalar_t__*) ;
 int logReaderBlob (TYPE_2__*,int *,int,int **,int*) ;
 scalar_t__ lsmGetU32 (int *) ;

__attribute__((used)) static void logReaderCksum(LogReader *p, LsmString *pBuf, int *pbEof, int *pRc){
  if( *pRc==LSM_OK ){
    u8 *pPtr = 0;
    u32 cksum0, cksum1;
    int nCksum = p->iBuf - p->iCksumBuf;


    assert( nCksum>=0 );
    logCksumUnaligned(&p->buf.z[p->iCksumBuf], nCksum, &p->cksum0, &p->cksum1);
    p->iCksumBuf = p->iBuf + 8;
    logReaderBlob(p, pBuf, 8, &pPtr, pRc);
    assert( pPtr || *pRc );


    if( pPtr ){
      cksum0 = lsmGetU32(pPtr);
      cksum1 = lsmGetU32(&pPtr[4]);
      *pbEof = (cksum0!=p->cksum0 || cksum1!=p->cksum1);
      p->iCksumBuf = p->iBuf;
    }
  }
}
