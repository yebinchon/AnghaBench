
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int Fts5Index ;
typedef int Fts5Buffer ;


 int UNUSED_PARAM (int *) ;
 int assert_nc (int) ;
 int fts5BufferSafeAppendBlob (int *,int const*,int) ;

__attribute__((used)) static void fts5PoslistCallback(
  Fts5Index *pUnused,
  void *pContext,
  const u8 *pChunk, int nChunk
){
  UNUSED_PARAM(pUnused);
  assert_nc( nChunk>=0 );
  if( nChunk>0 ){
    fts5BufferSafeAppendBlob((Fts5Buffer*)pContext, pChunk, nChunk);
  }
}
