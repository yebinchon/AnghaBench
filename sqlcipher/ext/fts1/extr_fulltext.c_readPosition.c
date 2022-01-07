
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int iLastPos; int p; TYPE_1__* pDoclist; } ;
struct TYPE_5__ {int iType; } ;
typedef TYPE_2__ DocListReader ;


 int DL_POSITIONS ;
 int DL_POSITIONS_OFFSETS ;
 int assert (int) ;
 scalar_t__ getVarint32 (int ,int*) ;
 int readerAtEnd (TYPE_2__*) ;

__attribute__((used)) static int readPosition(DocListReader *pReader){
  int i;
  int iType = pReader->pDoclist->iType;
  assert( iType>=DL_POSITIONS );
  assert( !readerAtEnd(pReader) );

  pReader->p += getVarint32(pReader->p, &i);
  if( i==0 ){
    pReader->iLastPos = -1;
    return -1;
  }
  pReader->iLastPos += ((int) i)-1;
  if( iType>=DL_POSITIONS_OFFSETS ){

    int iStart, iEnd;
    pReader->p += getVarint32(pReader->p, &iStart);
    pReader->p += getVarint32(pReader->p, &iEnd);
  }
  return pReader->iLastPos;
}
