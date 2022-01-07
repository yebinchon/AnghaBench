
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int WebPData ;
typedef int WebPAnimDecoderOptions ;
struct TYPE_7__ {unsigned long long canvas_width; int canvas_height; void* frame_count; void* bgcolor; void* loop_count; } ;
struct TYPE_8__ {int * prev_frame_disposed_; TYPE_1__ info_; int * curr_frame_; int * demux_; } ;
typedef TYPE_2__ WebPAnimDecoder ;


 int ApplyDecoderOptions (int *,TYPE_2__*) ;
 int DefaultDecoderOptions (int *) ;
 unsigned long long NUM_CHANNELS ;
 scalar_t__ WEBP_ABI_IS_INCOMPATIBLE (int,int ) ;
 int WEBP_DEMUX_ABI_VERSION ;
 int WEBP_FF_BACKGROUND_COLOR ;
 int WEBP_FF_CANVAS_HEIGHT ;
 int WEBP_FF_CANVAS_WIDTH ;
 int WEBP_FF_FRAME_COUNT ;
 int WEBP_FF_LOOP_COUNT ;
 int WebPAnimDecoderDelete (TYPE_2__*) ;
 int WebPAnimDecoderReset (TYPE_2__*) ;
 int * WebPDemux (int const*) ;
 void* WebPDemuxGetI (int *,int ) ;
 scalar_t__ WebPSafeCalloc (unsigned long long,int) ;

WebPAnimDecoder* WebPAnimDecoderNewInternal(
    const WebPData* webp_data, const WebPAnimDecoderOptions* dec_options,
    int abi_version) {
  WebPAnimDecoderOptions options;
  WebPAnimDecoder* dec = ((void*)0);
  if (webp_data == ((void*)0) ||
      WEBP_ABI_IS_INCOMPATIBLE(abi_version, WEBP_DEMUX_ABI_VERSION)) {
    return ((void*)0);
  }


  dec = (WebPAnimDecoder*)WebPSafeCalloc(1ULL, sizeof(*dec));
  if (dec == ((void*)0)) goto Error;

  if (dec_options != ((void*)0)) {
    options = *dec_options;
  } else {
    DefaultDecoderOptions(&options);
  }
  if (!ApplyDecoderOptions(&options, dec)) goto Error;

  dec->demux_ = WebPDemux(webp_data);
  if (dec->demux_ == ((void*)0)) goto Error;

  dec->info_.canvas_width = WebPDemuxGetI(dec->demux_, WEBP_FF_CANVAS_WIDTH);
  dec->info_.canvas_height = WebPDemuxGetI(dec->demux_, WEBP_FF_CANVAS_HEIGHT);
  dec->info_.loop_count = WebPDemuxGetI(dec->demux_, WEBP_FF_LOOP_COUNT);
  dec->info_.bgcolor = WebPDemuxGetI(dec->demux_, WEBP_FF_BACKGROUND_COLOR);
  dec->info_.frame_count = WebPDemuxGetI(dec->demux_, WEBP_FF_FRAME_COUNT);


  dec->curr_frame_ = (uint8_t*)WebPSafeCalloc(
      dec->info_.canvas_width * NUM_CHANNELS, dec->info_.canvas_height);
  if (dec->curr_frame_ == ((void*)0)) goto Error;
  dec->prev_frame_disposed_ = (uint8_t*)WebPSafeCalloc(
      dec->info_.canvas_width * NUM_CHANNELS, dec->info_.canvas_height);
  if (dec->prev_frame_disposed_ == ((void*)0)) goto Error;

  WebPAnimDecoderReset(dec);
  return dec;

 Error:
  WebPAnimDecoderDelete(dec);
  return ((void*)0);
}
