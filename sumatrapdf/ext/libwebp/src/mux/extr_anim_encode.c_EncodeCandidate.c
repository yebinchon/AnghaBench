
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int error_code; } ;
typedef TYPE_2__ WebPPicture ;
typedef int WebPEncodingError ;
struct TYPE_15__ {scalar_t__ filter_strength; scalar_t__ autofilter; int lossless; } ;
typedef TYPE_3__ WebPConfig ;
struct TYPE_13__ {scalar_t__ duration; int blend_method; int dispose_method; int y_offset; int x_offset; int id; } ;
struct TYPE_16__ {int y_offset_; int x_offset_; } ;
struct TYPE_17__ {int evaluate_; int mem_; TYPE_1__ info_; TYPE_4__ rect_; } ;
typedef TYPE_4__ FrameRectangle ;
typedef TYPE_5__ Candidate ;


 int EncodeFrame (TYPE_3__*,TYPE_2__* const,int *) ;
 int VP8_ENC_OK ;
 int WEBP_CHUNK_ANMF ;
 int WEBP_MUX_BLEND ;
 int WEBP_MUX_DISPOSE_NONE ;
 int WEBP_MUX_NO_BLEND ;
 int WebPMemoryWriterClear (int *) ;
 int WebPMemoryWriterInit (int *) ;
 int assert (int ) ;
 int memset (TYPE_5__* const,int ,int) ;

__attribute__((used)) static WebPEncodingError EncodeCandidate(WebPPicture* const sub_frame,
                                         const FrameRectangle* const rect,
                                         const WebPConfig* const encoder_config,
                                         int use_blending,
                                         Candidate* const candidate) {
  WebPConfig config = *encoder_config;
  WebPEncodingError error_code = VP8_ENC_OK;
  assert(candidate != ((void*)0));
  memset(candidate, 0, sizeof(*candidate));


  candidate->rect_ = *rect;
  candidate->info_.id = WEBP_CHUNK_ANMF;
  candidate->info_.x_offset = rect->x_offset_;
  candidate->info_.y_offset = rect->y_offset_;
  candidate->info_.dispose_method = WEBP_MUX_DISPOSE_NONE;
  candidate->info_.blend_method =
      use_blending ? WEBP_MUX_BLEND : WEBP_MUX_NO_BLEND;
  candidate->info_.duration = 0;


  WebPMemoryWriterInit(&candidate->mem_);

  if (!config.lossless && use_blending) {


    config.autofilter = 0;
    config.filter_strength = 0;
  }
  if (!EncodeFrame(&config, sub_frame, &candidate->mem_)) {
    error_code = sub_frame->error_code;
    goto Err;
  }

  candidate->evaluate_ = 1;
  return error_code;

 Err:
  WebPMemoryWriterClear(&candidate->mem_);
  return error_code;
}
