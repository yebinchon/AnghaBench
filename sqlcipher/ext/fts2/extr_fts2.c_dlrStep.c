
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
struct TYPE_4__ {scalar_t__ nElement; scalar_t__ nData; scalar_t__ pData; scalar_t__ iType; int iDocid; } ;
typedef TYPE_1__ DLReader ;


 scalar_t__ DL_POSITIONS ;
 scalar_t__ DL_POSITIONS_OFFSETS ;
 int POS_COLUMN ;
 int POS_END ;
 int assert (int) ;
 int dlrAtEnd (TYPE_1__*) ;
 int getVarint (scalar_t__,scalar_t__*) ;
 scalar_t__ getVarint32 (scalar_t__,int*) ;

__attribute__((used)) static void dlrStep(DLReader *pReader){
  assert( !dlrAtEnd(pReader) );


  assert( pReader->nElement<=pReader->nData );
  pReader->pData += pReader->nElement;
  pReader->nData -= pReader->nElement;


  if( pReader->nData!=0 ){
    sqlite_int64 iDocidDelta;
    int iDummy, n = getVarint(pReader->pData, &iDocidDelta);
    pReader->iDocid += iDocidDelta;
    if( pReader->iType>=DL_POSITIONS ){
      assert( n<pReader->nData );
      while( 1 ){
        n += getVarint32(pReader->pData+n, &iDummy);
        assert( n<=pReader->nData );
        if( iDummy==POS_END ) break;
        if( iDummy==POS_COLUMN ){
          n += getVarint32(pReader->pData+n, &iDummy);
          assert( n<pReader->nData );
        }else if( pReader->iType==DL_POSITIONS_OFFSETS ){
          n += getVarint32(pReader->pData+n, &iDummy);
          n += getVarint32(pReader->pData+n, &iDummy);
          assert( n<pReader->nData );
        }
      }
    }
    pReader->nElement = n;
    assert( pReader->nElement<=pReader->nData );
  }
}
