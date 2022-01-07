
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int WebPInfoStatus ;
struct TYPE_17__ {scalar_t__ anim_frame_data_size_; scalar_t__ is_processing_anim_frame_; int seen_image_subchunk_; int * chunk_counts_; int quiet_; } ;
typedef TYPE_1__ WebPInfo ;
struct TYPE_18__ {int id_; scalar_t__ size_; scalar_t__ offset_; } ;
typedef int ChunkID ;
typedef TYPE_2__ ChunkData ;
 int LOG_ERROR (char*) ;
 int LOG_WARN (char*) ;
 int ProcessALPHChunk (TYPE_2__ const* const,TYPE_1__* const) ;
 int ProcessANIMChunk (TYPE_2__ const* const,TYPE_1__* const) ;
 int ProcessANMFChunk (TYPE_2__ const* const,TYPE_1__* const) ;
 int ProcessICCPChunk (TYPE_2__ const* const,TYPE_1__* const) ;
 int ProcessImageChunk (TYPE_2__ const* const,TYPE_1__* const) ;
 int ProcessVP8XChunk (TYPE_2__ const* const,TYPE_1__* const) ;
 int WEBP_INFO_OK ;
 int WEBP_INFO_PARSE_ERROR ;
 int WEBP_INFO_TRUNCATED_DATA ;
 char** kWebPChunkTags ;
 int printf (char*,char const,char const,char const,char const,int,int) ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static WebPInfoStatus ProcessChunk(const ChunkData* const chunk_data,
                                   WebPInfo* const webp_info) {
  WebPInfoStatus status = WEBP_INFO_OK;
  ChunkID id = chunk_data->id_;
  if (chunk_data->id_ == 132) {
    char error_message[50];
    snprintf(error_message, 50, "Unknown chunk at offset %6d, length %6d",
            (int)chunk_data->offset_, (int)chunk_data->size_);
    LOG_WARN(error_message);
  } else {
    if (!webp_info->quiet_) {
      const char* tag = kWebPChunkTags[chunk_data->id_];
      printf("Chunk %c%c%c%c at offset %6d, length %6d\n",
             tag[0], tag[1], tag[2], tag[3], (int)chunk_data->offset_,
             (int)chunk_data->size_);
    }
  }
  switch (id) {
    case 131:
    case 130:
      status = ProcessImageChunk(chunk_data, webp_info);
      break;
    case 129:
      status = ProcessVP8XChunk(chunk_data, webp_info);
      break;
    case 137:
      status = ProcessALPHChunk(chunk_data, webp_info);
      break;
    case 136:
      status = ProcessANIMChunk(chunk_data, webp_info);
      break;
    case 135:
      status = ProcessANMFChunk(chunk_data, webp_info);
      break;
    case 133:
      status = ProcessICCPChunk(chunk_data, webp_info);
      break;
    case 134:
    case 128:
      ++webp_info->chunk_counts_[id];
      break;
    case 132:
    default:
      break;
  }
  if (webp_info->is_processing_anim_frame_ && id != 135) {
    if (webp_info->anim_frame_data_size_ == chunk_data->size_) {
      if (!webp_info->seen_image_subchunk_) {
        LOG_ERROR("No VP8/VP8L chunk detected in an ANMF chunk.");
        return WEBP_INFO_PARSE_ERROR;
      }
      webp_info->is_processing_anim_frame_ = 0;
    } else if (webp_info->anim_frame_data_size_ > chunk_data->size_) {
      webp_info->anim_frame_data_size_ -= chunk_data->size_;
    } else {
      LOG_ERROR("Truncated data detected when parsing ANMF chunk.");
      return WEBP_INFO_TRUNCATED_DATA;
    }
  }
  return status;
}
