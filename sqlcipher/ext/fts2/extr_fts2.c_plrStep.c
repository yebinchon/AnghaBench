
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nData; int iColumn; int iPosition; scalar_t__ iType; int * pData; scalar_t__ iStartOffset; scalar_t__ iEndOffset; } ;
typedef TYPE_1__ PLReader ;


 scalar_t__ DL_POSITIONS_OFFSETS ;
 int POS_BASE ;
 int POS_COLUMN ;
 int POS_END ;
 int assert (int) ;
 int getVarint32 (int *,int*) ;
 int plrAtEnd (TYPE_1__*) ;

__attribute__((used)) static void plrStep(PLReader *pReader){
  int i, n;

  assert( !plrAtEnd(pReader) );

  if( pReader->nData==0 ){
    pReader->pData = ((void*)0);
    return;
  }

  n = getVarint32(pReader->pData, &i);
  if( i==POS_COLUMN ){
    n += getVarint32(pReader->pData+n, &pReader->iColumn);
    pReader->iPosition = 0;
    pReader->iStartOffset = 0;
    n += getVarint32(pReader->pData+n, &i);
  }

  assert( i!=POS_COLUMN );

  if( i==POS_END ){
    pReader->nData = 0;
    pReader->pData = ((void*)0);
    return;
  }

  pReader->iPosition += i-POS_BASE;
  if( pReader->iType==DL_POSITIONS_OFFSETS ){
    n += getVarint32(pReader->pData+n, &i);
    pReader->iStartOffset += i;
    n += getVarint32(pReader->pData+n, &i);
    pReader->iEndOffset = pReader->iStartOffset+i;
  }
  assert( n<=pReader->nData );
  pReader->pData += n;
  pReader->nData -= n;
}
