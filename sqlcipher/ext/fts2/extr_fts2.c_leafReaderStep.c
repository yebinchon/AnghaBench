
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nData; } ;
struct TYPE_5__ {int nData; scalar_t__ pData; TYPE_4__ term; } ;
typedef TYPE_1__ LeafReader ;


 int assert (int) ;
 int dataBufferAppend (TYPE_4__*,scalar_t__,int) ;
 int getVarint32 (scalar_t__,int*) ;
 int leafReaderAtEnd (TYPE_1__*) ;

__attribute__((used)) static void leafReaderStep(LeafReader *pReader){
  int n, nData, nPrefix, nSuffix;
  assert( !leafReaderAtEnd(pReader) );


  n = getVarint32(pReader->pData, &nData);
  assert( n+nData<=pReader->nData );
  pReader->pData += n+nData;
  pReader->nData -= n+nData;

  if( !leafReaderAtEnd(pReader) ){



    n = getVarint32(pReader->pData, &nPrefix);
    n += getVarint32(pReader->pData+n, &nSuffix);
    assert( n+nSuffix<pReader->nData );
    pReader->term.nData = nPrefix;
    dataBufferAppend(&pReader->term, pReader->pData+n, nSuffix);

    pReader->pData += n+nSuffix;
    pReader->nData -= n+nSuffix;
  }
}
