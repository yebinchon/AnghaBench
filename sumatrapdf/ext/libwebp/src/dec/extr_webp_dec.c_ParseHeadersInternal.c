
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int hdrs ;
struct TYPE_4__ {int have_all_data; size_t data_size; scalar_t__ riff_size; scalar_t__ compressed_size; int offset; int * alpha_data; int const* data; scalar_t__ is_lossless; int alpha_data_size; } ;
typedef TYPE_1__ WebPHeaderStructure ;
typedef scalar_t__ VP8StatusCode ;


 int ALPHA_FLAG ;
 int ANIMATION_FLAG ;
 scalar_t__ MAX_CHUNK_PAYLOAD ;
 scalar_t__ ParseOptionalChunks (int const**,size_t*,scalar_t__,int **,int *) ;
 scalar_t__ ParseRIFF (int const**,size_t*,int const,scalar_t__*) ;
 scalar_t__ ParseVP8Header (int const**,size_t*,int const,scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ ParseVP8X (int const**,size_t*,int*,int*,int*,int*) ;
 size_t RIFF_HEADER_SIZE ;
 size_t TAG_SIZE ;
 int VP8GetInfo (int const*,size_t,int,int*,int*) ;
 int VP8LGetInfo (int const*,size_t,int*,int*,int* const) ;
 size_t VP8L_FRAME_HEADER_SIZE ;
 size_t VP8_FRAME_HEADER_SIZE ;
 scalar_t__ VP8_STATUS_BITSTREAM_ERROR ;
 scalar_t__ VP8_STATUS_NOT_ENOUGH_DATA ;
 scalar_t__ VP8_STATUS_OK ;
 int assert (int) ;
 int memcmp (int const*,char*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static VP8StatusCode ParseHeadersInternal(const uint8_t* data,
                                          size_t data_size,
                                          int* const width,
                                          int* const height,
                                          int* const has_alpha,
                                          int* const has_animation,
                                          int* const format,
                                          WebPHeaderStructure* const headers) {
  int canvas_width = 0;
  int canvas_height = 0;
  int image_width = 0;
  int image_height = 0;
  int found_riff = 0;
  int found_vp8x = 0;
  int animation_present = 0;
  const int have_all_data = (headers != ((void*)0)) ? headers->have_all_data : 0;

  VP8StatusCode status;
  WebPHeaderStructure hdrs;

  if (data == ((void*)0) || data_size < RIFF_HEADER_SIZE) {
    return VP8_STATUS_NOT_ENOUGH_DATA;
  }
  memset(&hdrs, 0, sizeof(hdrs));
  hdrs.data = data;
  hdrs.data_size = data_size;


  status = ParseRIFF(&data, &data_size, have_all_data, &hdrs.riff_size);
  if (status != VP8_STATUS_OK) {
    return status;
  }
  found_riff = (hdrs.riff_size > 0);


  {
    uint32_t flags = 0;
    status = ParseVP8X(&data, &data_size, &found_vp8x,
                       &canvas_width, &canvas_height, &flags);
    if (status != VP8_STATUS_OK) {
      return status;
    }
    animation_present = !!(flags & ANIMATION_FLAG);
    if (!found_riff && found_vp8x) {


      return VP8_STATUS_BITSTREAM_ERROR;
    }
    if (has_alpha != ((void*)0)) *has_alpha = !!(flags & ALPHA_FLAG);
    if (has_animation != ((void*)0)) *has_animation = animation_present;
    if (format != ((void*)0)) *format = 0;

    image_width = canvas_width;
    image_height = canvas_height;
    if (found_vp8x && animation_present && headers == ((void*)0)) {
      status = VP8_STATUS_OK;
      goto ReturnWidthHeight;
    }
  }

  if (data_size < TAG_SIZE) {
    status = VP8_STATUS_NOT_ENOUGH_DATA;
    goto ReturnWidthHeight;
  }


  if ((found_riff && found_vp8x) ||
      (!found_riff && !found_vp8x && !memcmp(data, "ALPH", TAG_SIZE))) {
    status = ParseOptionalChunks(&data, &data_size, hdrs.riff_size,
                                 &hdrs.alpha_data, &hdrs.alpha_data_size);
    if (status != VP8_STATUS_OK) {
      goto ReturnWidthHeight;
    }
  }


  status = ParseVP8Header(&data, &data_size, have_all_data, hdrs.riff_size,
                          &hdrs.compressed_size, &hdrs.is_lossless);
  if (status != VP8_STATUS_OK) {
    goto ReturnWidthHeight;
  }
  if (hdrs.compressed_size > MAX_CHUNK_PAYLOAD) {
    return VP8_STATUS_BITSTREAM_ERROR;
  }

  if (format != ((void*)0) && !animation_present) {
    *format = hdrs.is_lossless ? 2 : 1;
  }

  if (!hdrs.is_lossless) {
    if (data_size < VP8_FRAME_HEADER_SIZE) {
      status = VP8_STATUS_NOT_ENOUGH_DATA;
      goto ReturnWidthHeight;
    }

    if (!VP8GetInfo(data, data_size, (uint32_t)hdrs.compressed_size,
                    &image_width, &image_height)) {
      return VP8_STATUS_BITSTREAM_ERROR;
    }
  } else {
    if (data_size < VP8L_FRAME_HEADER_SIZE) {
      status = VP8_STATUS_NOT_ENOUGH_DATA;
      goto ReturnWidthHeight;
    }

    if (!VP8LGetInfo(data, data_size, &image_width, &image_height, has_alpha)) {
      return VP8_STATUS_BITSTREAM_ERROR;
    }
  }

  if (found_vp8x) {
    if (canvas_width != image_width || canvas_height != image_height) {
      return VP8_STATUS_BITSTREAM_ERROR;
    }
  }
  if (headers != ((void*)0)) {
    *headers = hdrs;
    headers->offset = data - headers->data;
    assert((uint64_t)(data - headers->data) < MAX_CHUNK_PAYLOAD);
    assert(headers->offset == headers->data_size - data_size);
  }
 ReturnWidthHeight:
  if (status == VP8_STATUS_OK ||
      (status == VP8_STATUS_NOT_ENOUGH_DATA && found_vp8x && headers == ((void*)0))) {
    if (has_alpha != ((void*)0)) {


      *has_alpha |= (hdrs.alpha_data != ((void*)0));
    }
    if (width != ((void*)0)) *width = image_width;
    if (height != ((void*)0)) *height = image_height;
    return VP8_STATUS_OK;
  } else {
    return status;
  }
}
