
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* pData; int nData; int term; int iBlockid; } ;
typedef TYPE_1__ InteriorReader ;


 int CLEAR (TYPE_1__*) ;
 int assert (int) ;
 int dataBufferInit (int *,int) ;
 int dataBufferReplace (int *,char const*,int) ;
 int getVarint (char const*,int *) ;
 int getVarint32 (char const*,int*) ;

__attribute__((used)) static void interiorReaderInit(const char *pData, int nData,
                               InteriorReader *pReader){
  int n, nTerm;


  assert( nData>0 );
  assert( pData[0]!='\0' );

  CLEAR(pReader);


  n = getVarint(pData+1, &pReader->iBlockid);
  assert( 1+n<=nData );
  pReader->pData = pData+1+n;
  pReader->nData = nData-(1+n);





  if( pReader->nData==0 ){
    dataBufferInit(&pReader->term, 0);
  }else{
    n = getVarint32(pReader->pData, &nTerm);
    dataBufferInit(&pReader->term, nTerm);
    dataBufferReplace(&pReader->term, pReader->pData+n, nTerm);
    assert( n+nTerm<=pReader->nData );
    pReader->pData += n+nTerm;
    pReader->nData -= n+nTerm;
  }
}
