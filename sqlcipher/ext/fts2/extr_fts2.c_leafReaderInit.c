
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* pData; int nData; int term; } ;
typedef TYPE_1__ LeafReader ;


 int CLEAR (TYPE_1__*) ;
 int assert (int) ;
 int dataBufferInit (int *,int) ;
 int dataBufferReplace (int *,char const*,int) ;
 int getVarint32 (char const*,int*) ;

__attribute__((used)) static void leafReaderInit(const char *pData, int nData,
                           LeafReader *pReader){
  int nTerm, n;

  assert( nData>0 );
  assert( pData[0]=='\0' );

  CLEAR(pReader);


  n = getVarint32(pData+1, &nTerm);
  dataBufferInit(&pReader->term, nTerm);
  dataBufferReplace(&pReader->term, pData+1+n, nTerm);


  assert( 1+n+nTerm<nData );
  pReader->pData = pData+1+n+nTerm;
  pReader->nData = nData-1-n-nTerm;
}
