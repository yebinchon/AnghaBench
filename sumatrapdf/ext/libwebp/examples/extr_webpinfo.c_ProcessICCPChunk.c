
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WebPInfoStatus ;
struct TYPE_3__ {scalar_t__* chunk_counts_; } ;
typedef TYPE_1__ WebPInfo ;
typedef int ChunkData ;


 size_t CHUNK_ANIM ;
 size_t CHUNK_ICCP ;
 size_t CHUNK_VP8 ;
 size_t CHUNK_VP8L ;
 size_t CHUNK_VP8X ;
 int LOG_ERROR (char*) ;
 int WEBP_INFO_OK ;
 int WEBP_INFO_PARSE_ERROR ;

__attribute__((used)) static WebPInfoStatus ProcessICCPChunk(const ChunkData* const chunk_data,
                                       WebPInfo* const webp_info) {
  (void)chunk_data;
  if (!webp_info->chunk_counts_[CHUNK_VP8X]) {
    LOG_ERROR("ICCP chunk detected before VP8X chunk.");
    return WEBP_INFO_PARSE_ERROR;
  }
  if (webp_info->chunk_counts_[CHUNK_VP8] ||
      webp_info->chunk_counts_[CHUNK_VP8L] ||
      webp_info->chunk_counts_[CHUNK_ANIM]) {
    LOG_ERROR("ICCP chunk detected after image data.");
    return WEBP_INFO_PARSE_ERROR;
  }
  ++webp_info->chunk_counts_[CHUNK_ICCP];
  return WEBP_INFO_OK;
}
