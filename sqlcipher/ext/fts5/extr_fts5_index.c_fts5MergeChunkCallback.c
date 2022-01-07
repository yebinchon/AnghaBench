
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int Fts5SegWriter ;
typedef int Fts5Index ;


 int fts5WriteAppendPoslistData (int *,int *,int const*,int) ;

__attribute__((used)) static void fts5MergeChunkCallback(
  Fts5Index *p,
  void *pCtx,
  const u8 *pChunk, int nChunk
){
  Fts5SegWriter *pWriter = (Fts5SegWriter*)pCtx;
  fts5WriteAppendPoslistData(p, pWriter, pChunk, nChunk);
}
