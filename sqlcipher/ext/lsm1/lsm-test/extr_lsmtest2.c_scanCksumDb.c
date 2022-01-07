
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ cksum1; int cksum2; int nRow; } ;
typedef TYPE_1__ Cksum ;



__attribute__((used)) static void scanCksumDb(
  void *pCtx,
  void *pKey, int nKey,
  void *pVal, int nVal
){
  Cksum *p = (Cksum *)pCtx;
  int i;

  p->nRow++;
  for(i=0; i<nKey; i++){
    p->cksum1 += ((u8 *)pKey)[i];
    p->cksum2 += p->cksum1;
  }
  for(i=0; i<nVal; i++){
    p->cksum1 += ((u8 *)pVal)[i];
    p->cksum2 += p->cksum1;
  }
}
