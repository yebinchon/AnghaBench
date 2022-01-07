
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {size_t n; int * z; } ;
struct TYPE_6__ {size_t iBuf; TYPE_1__ buf; } ;
typedef int LsmString ;
typedef TYPE_2__ LogReader ;


 int LSM_OK ;
 int logReaderBlob (TYPE_2__*,int *,int,int **,int*) ;
 int lsmVarintGet32 (int *,int*) ;
 int lsmVarintSize (int ) ;

__attribute__((used)) static void logReaderVarint(
  LogReader *p,
  LsmString *pBuf,
  int *piVal,
  int *pRc
){
  if( *pRc==LSM_OK ){
    u8 *aVarint;
    if( p->buf.n==p->iBuf ){
      logReaderBlob(p, 0, 10, &aVarint, pRc);
      if( LSM_OK==*pRc ) p->iBuf -= (10 - lsmVarintGet32(aVarint, piVal));
    }else{
      logReaderBlob(p, pBuf, lsmVarintSize(p->buf.z[p->iBuf]), &aVarint, pRc);
      if( LSM_OK==*pRc ) lsmVarintGet32(aVarint, piVal);
    }
  }
}
