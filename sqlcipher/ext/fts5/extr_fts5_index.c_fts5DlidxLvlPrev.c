
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ i64 ;
struct TYPE_5__ {int iOff; int bEof; int iFirstOff; scalar_t__ iLeafPgno; int iRowid; TYPE_1__* pData; } ;
struct TYPE_4__ {int* p; } ;
typedef TYPE_2__ Fts5DlidxLvl ;


 int assert (int) ;
 int fts5GetVarint (int*,int *) ;

__attribute__((used)) static int fts5DlidxLvlPrev(Fts5DlidxLvl *pLvl){
  int iOff = pLvl->iOff;

  assert( pLvl->bEof==0 );
  if( iOff<=pLvl->iFirstOff ){
    pLvl->bEof = 1;
  }else{
    u8 *a = pLvl->pData->p;
    i64 iVal;
    int iLimit;
    int ii;
    int nZero = 0;





    iLimit = (iOff>9 ? iOff-9 : 0);
    for(iOff--; iOff>iLimit; iOff--){
      if( (a[iOff-1] & 0x80)==0 ) break;
    }

    fts5GetVarint(&a[iOff], (u64*)&iVal);
    pLvl->iRowid -= iVal;
    pLvl->iLeafPgno--;


    for(ii=iOff-1; ii>=pLvl->iFirstOff && a[ii]==0x00; ii--){
      nZero++;
    }
    if( ii>=pLvl->iFirstOff && (a[ii] & 0x80) ){



      int bZero = 0;
      if( (ii-8)>=pLvl->iFirstOff ){
        int j;
        for(j=1; j<=8 && (a[ii-j] & 0x80); j++);
        bZero = (j>8);
      }
      if( bZero==0 ) nZero--;
    }
    pLvl->iLeafPgno -= nZero;
    pLvl->iOff = iOff - nZero;
  }

  return pLvl->bEof;
}
