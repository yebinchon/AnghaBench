
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WebPMuxError ;
struct TYPE_3__ {int images_; } ;
typedef TYPE_1__ WebPMux ;


 int MuxImageCount (int ,int ) ;
 int WEBP_CHUNK_ANMF ;
 int WEBP_CHUNK_IMAGE ;
 int WEBP_MUX_INVALID_ARGUMENT ;
 int WEBP_MUX_NOT_FOUND ;
 int WEBP_MUX_OK ;

__attribute__((used)) static WebPMuxError ValidateForSingleImage(const WebPMux* const mux) {
  const int num_images = MuxImageCount(mux->images_, WEBP_CHUNK_IMAGE);
  const int num_frames = MuxImageCount(mux->images_, WEBP_CHUNK_ANMF);

  if (num_images == 0) {

    return WEBP_MUX_NOT_FOUND;
  } else if (num_images == 1 && num_frames == 0) {

    return WEBP_MUX_OK;
  } else {

    return WEBP_MUX_INVALID_ARGUMENT;
  }
}
