
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ WebPMuxError ;
typedef int WebPData ;
typedef int WebPChunk ;


 scalar_t__ ChunkAssignData (int *,int const* const,int,int ) ;
 int ChunkInit (int *) ;
 int ChunkRelease (int *) ;
 scalar_t__ ChunkSetHead (int *,int **) ;
 scalar_t__ WEBP_MUX_OK ;

__attribute__((used)) static WebPMuxError AddDataToChunkList(
    const WebPData* const data, int copy_data, uint32_t tag,
    WebPChunk** chunk_list) {
  WebPChunk chunk;
  WebPMuxError err;
  ChunkInit(&chunk);
  err = ChunkAssignData(&chunk, data, copy_data, tag);
  if (err != WEBP_MUX_OK) goto Err;
  err = ChunkSetHead(&chunk, chunk_list);
  if (err != WEBP_MUX_OK) goto Err;
  return WEBP_MUX_OK;
 Err:
  ChunkRelease(&chunk);
  return err;
}
