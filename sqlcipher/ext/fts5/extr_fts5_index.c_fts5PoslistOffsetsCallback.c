
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int iRead; int iWrite; int pBuf; int pColset; } ;
typedef TYPE_1__ PoslistOffsetsCtx ;
typedef int Fts5Index ;


 int UNUSED_PARAM (int *) ;
 int assert_nc (int) ;
 int fts5BufferSafeAppendVarint (int ,int) ;
 scalar_t__ fts5GetVarint32 (int const*,int) ;
 scalar_t__ fts5IndexColsetTest (int ,int) ;

__attribute__((used)) static void fts5PoslistOffsetsCallback(
  Fts5Index *pUnused,
  void *pContext,
  const u8 *pChunk, int nChunk
){
  PoslistOffsetsCtx *pCtx = (PoslistOffsetsCtx*)pContext;
  UNUSED_PARAM(pUnused);
  assert_nc( nChunk>=0 );
  if( nChunk>0 ){
    int i = 0;
    while( i<nChunk ){
      int iVal;
      i += fts5GetVarint32(&pChunk[i], iVal);
      iVal += pCtx->iRead - 2;
      pCtx->iRead = iVal;
      if( fts5IndexColsetTest(pCtx->pColset, iVal) ){
        fts5BufferSafeAppendVarint(pCtx->pBuf, iVal + 2 - pCtx->iWrite);
        pCtx->iWrite = iVal;
      }
    }
  }
}
