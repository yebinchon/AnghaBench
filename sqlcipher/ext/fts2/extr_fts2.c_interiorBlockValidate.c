
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_4__ {char* pData; int nData; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef TYPE_2__ InteriorBlock ;


 int assert (int) ;
 int getVarint (char const*,int *) ;
 int getVarint32 (char const*,int*) ;

__attribute__((used)) static void interiorBlockValidate(InteriorBlock *pBlock){
  const char *pData = pBlock->data.pData;
  int nData = pBlock->data.nData;
  int n, iDummy;
  sqlite_int64 iBlockid;

  assert( nData>0 );
  assert( pData!=0 );
  assert( pData+nData>pData );


  n = getVarint32(pData, &iDummy);
  assert( n>0 );
  assert( iDummy>0 );
  assert( n<nData );
  pData += n;
  nData -= n;


  n = getVarint(pData, &iBlockid);
  assert( n>0 );
  assert( n<=nData );
  pData += n;
  nData -= n;


  if( nData!=0 ){

    n = getVarint32(pData, &iDummy);
    assert( n>0 );
    assert( iDummy>0 );
    assert( n+iDummy>0);
    assert( n+iDummy<=nData );
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
      assert( n+iDummy>0);
      assert( n+iDummy<=nData );
      pData += n+iDummy;
      nData -= n+iDummy;
    }
  }
}
