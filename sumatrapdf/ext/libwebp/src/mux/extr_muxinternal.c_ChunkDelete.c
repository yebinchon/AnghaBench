
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPChunk ;


 int * ChunkRelease (int * const) ;
 int WebPSafeFree (int * const) ;

WebPChunk* ChunkDelete(WebPChunk* const chunk) {
  WebPChunk* const next = ChunkRelease(chunk);
  WebPSafeFree(chunk);
  return next;
}
