
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nData; } ;
struct TYPE_6__ {scalar_t__ nData; int iBlockid; scalar_t__ pData; TYPE_4__ term; } ;
typedef TYPE_1__ InteriorReader ;


 int assert (int) ;
 int dataBufferAppend (TYPE_4__*,scalar_t__,int) ;
 int dataBufferReset (TYPE_4__*) ;
 int getVarint32 (scalar_t__,int*) ;
 int interiorReaderAtEnd (TYPE_1__*) ;

__attribute__((used)) static void interiorReaderStep(InteriorReader *pReader){
  assert( !interiorReaderAtEnd(pReader) );




  if( pReader->nData==0 ){
    dataBufferReset(&pReader->term);
  }else{
    int n, nPrefix, nSuffix;

    n = getVarint32(pReader->pData, &nPrefix);
    n += getVarint32(pReader->pData+n, &nSuffix);


    pReader->term.nData = nPrefix;
    dataBufferAppend(&pReader->term, pReader->pData+n, nSuffix);

    assert( n+nSuffix<=pReader->nData );
    pReader->pData += n+nSuffix;
    pReader->nData -= n+nSuffix;
  }
  pReader->iBlockid++;
}
