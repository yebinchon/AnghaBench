
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT_VALID_DOCLIST (int ,char const*,int,int *) ;
 int DL_DEFAULT ;
 int assert (int) ;
 int getVarint32 (char const*,int*) ;

__attribute__((used)) static void leafNodeValidate(const char *pData, int nData){
  int n, iDummy;

  if( nData==0 ) return;
  assert( nData>0 );
  assert( pData!=0 );
  assert( pData+nData>pData );


  n = getVarint32(pData, &iDummy);
  assert( iDummy==0 );
  assert( n>0 );
  assert( n<nData );
  pData += n;
  nData -= n;


  n = getVarint32(pData, &iDummy);
  assert( n>0 );
  assert( iDummy>0 );
  assert( n+iDummy>0 );
  assert( n+iDummy<nData );
  pData += n+iDummy;
  nData -= n+iDummy;


  n = getVarint32(pData, &iDummy);
  assert( n>0 );
  assert( iDummy>0 );
  assert( n+iDummy>0 );
  assert( n+iDummy<=nData );
  ASSERT_VALID_DOCLIST(DL_DEFAULT, pData+n, iDummy, ((void*)0));
  pData += n+iDummy;
  nData -= n+iDummy;


  while( nData!=0 ){
    n = getVarint32(pData, &iDummy);
    assert( n>0 );
    assert( iDummy>=0 );
    assert( n<nData );
    pData += n;
    nData -= n;
    n = getVarint32(pData, &iDummy);
    assert( n>0 );
    assert( iDummy>0 );
    assert( n+iDummy>0 );
    assert( n+iDummy<nData );
    pData += n+iDummy;
    nData -= n+iDummy;

    n = getVarint32(pData, &iDummy);
    assert( n>0 );
    assert( iDummy>0 );
    assert( n+iDummy>0 );
    assert( n+iDummy<=nData );
    ASSERT_VALID_DOCLIST(DL_DEFAULT, pData+n, iDummy, ((void*)0));
    pData += n+iDummy;
    nData -= n+iDummy;
  }
}
