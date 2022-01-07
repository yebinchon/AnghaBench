
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int oldcksum1; int oldcksum0; int iOldLog; } ;
struct TYPE_7__ {TYPE_2__* pShmhdr; TYPE_1__ treehdr; } ;
typedef TYPE_3__ lsm_db ;
typedef int i64 ;
struct TYPE_6__ {int * aSnap2; } ;
typedef int CkptBuffer ;


 int CKPT_HDR_LO_CKSUM2 ;
 int CKPT_HDR_LO_MSW ;
 int assert (int) ;
 int ckptAppend64 (int *,int*,int ,int*) ;
 int ckptSetValue (int *,int,int ,int*) ;

__attribute__((used)) static void ckptExportLog(
  lsm_db *pDb,
  int bFlush,
  CkptBuffer *p,
  int *piOut,
  int *pRc
){
  int iOut = *piOut;

  assert( iOut==CKPT_HDR_LO_MSW );

  if( bFlush ){
    i64 iOff = pDb->treehdr.iOldLog;
    ckptAppend64(p, &iOut, iOff, pRc);
    ckptSetValue(p, iOut++, pDb->treehdr.oldcksum0, pRc);
    ckptSetValue(p, iOut++, pDb->treehdr.oldcksum1, pRc);
  }else{
    for(; iOut<=CKPT_HDR_LO_CKSUM2; iOut++){
      ckptSetValue(p, iOut, pDb->pShmhdr->aSnap2[iOut], pRc);
    }
  }

  assert( *pRc || iOut==CKPT_HDR_LO_CKSUM2+1 );
  *piOut = iOut;
}
