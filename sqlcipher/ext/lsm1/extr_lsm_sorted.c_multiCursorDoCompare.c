
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* aTree; int nTree; } ;
typedef TYPE_1__ MultiCursor ;


 int LSM_INSERT ;
 int LSM_POINT_DELETE ;
 int assert (int ) ;
 int multiCursorGetKey (TYPE_1__*,int,int*,void**,int*) ;
 int sortedDbKeyCompare (TYPE_1__*,int,void*,int,int,void*,int) ;

__attribute__((used)) static void multiCursorDoCompare(MultiCursor *pCsr, int iOut, int bReverse){
  int i1;
  int i2;
  int iRes;
  void *pKey1; int nKey1; int eType1;
  void *pKey2; int nKey2; int eType2;
  const int mul = (bReverse ? -1 : 1);

  assert( pCsr->aTree && iOut<pCsr->nTree );
  if( iOut>=(pCsr->nTree/2) ){
    i1 = (iOut - pCsr->nTree/2) * 2;
    i2 = i1 + 1;
  }else{
    i1 = pCsr->aTree[iOut*2];
    i2 = pCsr->aTree[iOut*2+1];
  }

  multiCursorGetKey(pCsr, i1, &eType1, &pKey1, &nKey1);
  multiCursorGetKey(pCsr, i2, &eType2, &pKey2, &nKey2);

  if( pKey1==0 ){
    iRes = i2;
  }else if( pKey2==0 ){
    iRes = i1;
  }else{
    int res;


    res = sortedDbKeyCompare(pCsr,
        eType1, pKey1, nKey1, eType2, pKey2, nKey2
    );

    res = res * mul;
    if( res==0 ){




      int nc1 = (eType1 & (LSM_INSERT|LSM_POINT_DELETE))==0;
      int nc2 = (eType2 & (LSM_INSERT|LSM_POINT_DELETE))==0;
      iRes = (nc1 > nc2) ? i2 : i1;
    }else if( res<0 ){
      iRes = i1;
    }else{
      iRes = i2;
    }
  }

  pCsr->aTree[iOut] = iRes;
}
