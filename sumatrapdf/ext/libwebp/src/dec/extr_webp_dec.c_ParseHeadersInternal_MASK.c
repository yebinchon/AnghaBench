#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  hdrs ;
struct TYPE_4__ {int have_all_data; size_t data_size; scalar_t__ riff_size; scalar_t__ compressed_size; int offset; int /*<<< orphan*/ * alpha_data; int /*<<< orphan*/  const* data; scalar_t__ is_lossless; int /*<<< orphan*/  alpha_data_size; } ;
typedef  TYPE_1__ WebPHeaderStructure ;
typedef  scalar_t__ VP8StatusCode ;

/* Variables and functions */
 int ALPHA_FLAG ; 
 int ANIMATION_FLAG ; 
 scalar_t__ MAX_CHUNK_PAYLOAD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const**,size_t*,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const**,size_t*,int const,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const**,size_t*,int const,scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const**,size_t*,int*,int*,int*,int*) ; 
 size_t RIFF_HEADER_SIZE ; 
 size_t TAG_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,size_t,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,size_t,int*,int*,int* const) ; 
 size_t VP8L_FRAME_HEADER_SIZE ; 
 size_t VP8_FRAME_HEADER_SIZE ; 
 scalar_t__ VP8_STATUS_BITSTREAM_ERROR ; 
 scalar_t__ VP8_STATUS_NOT_ENOUGH_DATA ; 
 scalar_t__ VP8_STATUS_OK ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static VP8StatusCode FUNC9(const uint8_t* data,
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
  const int have_all_data = (headers != NULL) ? headers->have_all_data : 0;

  VP8StatusCode status;
  WebPHeaderStructure hdrs;

  if (data == NULL || data_size < RIFF_HEADER_SIZE) {
    return VP8_STATUS_NOT_ENOUGH_DATA;
  }
  FUNC8(&hdrs, 0, sizeof(hdrs));
  hdrs.data = data;
  hdrs.data_size = data_size;

  // Skip over RIFF header.
  status = FUNC1(&data, &data_size, have_all_data, &hdrs.riff_size);
  if (status != VP8_STATUS_OK) {
    return status;   // Wrong RIFF header / insufficient data.
  }
  found_riff = (hdrs.riff_size > 0);

  // Skip over VP8X.
  {
    uint32_t flags = 0;
    status = FUNC3(&data, &data_size, &found_vp8x,
                       &canvas_width, &canvas_height, &flags);
    if (status != VP8_STATUS_OK) {
      return status;  // Wrong VP8X / insufficient data.
    }
    animation_present = !!(flags & ANIMATION_FLAG);
    if (!found_riff && found_vp8x) {
      // Note: This restriction may be removed in the future, if it becomes
      // necessary to send VP8X chunk to the decoder.
      return VP8_STATUS_BITSTREAM_ERROR;
    }
    if (has_alpha != NULL) *has_alpha = !!(flags & ALPHA_FLAG);
    if (has_animation != NULL) *has_animation = animation_present;
    if (format != NULL) *format = 0;   // default = undefined

    image_width = canvas_width;
    image_height = canvas_height;
    if (found_vp8x && animation_present && headers == NULL) {
      status = VP8_STATUS_OK;
      goto ReturnWidthHeight;  // Just return features from VP8X header.
    }
  }

  if (data_size < TAG_SIZE) {
    status = VP8_STATUS_NOT_ENOUGH_DATA;
    goto ReturnWidthHeight;
  }

  // Skip over optional chunks if data started with "RIFF + VP8X" or "ALPH".
  if ((found_riff && found_vp8x) ||
      (!found_riff && !found_vp8x && !FUNC7(data, "ALPH", TAG_SIZE))) {
    status = FUNC0(&data, &data_size, hdrs.riff_size,
                                 &hdrs.alpha_data, &hdrs.alpha_data_size);
    if (status != VP8_STATUS_OK) {
      goto ReturnWidthHeight;  // Invalid chunk size / insufficient data.
    }
  }

  // Skip over VP8/VP8L header.
  status = FUNC2(&data, &data_size, have_all_data, hdrs.riff_size,
                          &hdrs.compressed_size, &hdrs.is_lossless);
  if (status != VP8_STATUS_OK) {
    goto ReturnWidthHeight;  // Wrong VP8/VP8L chunk-header / insufficient data.
  }
  if (hdrs.compressed_size > MAX_CHUNK_PAYLOAD) {
    return VP8_STATUS_BITSTREAM_ERROR;
  }

  if (format != NULL && !animation_present) {
    *format = hdrs.is_lossless ? 2 : 1;
  }

  if (!hdrs.is_lossless) {
    if (data_size < VP8_FRAME_HEADER_SIZE) {
      status = VP8_STATUS_NOT_ENOUGH_DATA;
      goto ReturnWidthHeight;
    }
    // Validates raw VP8 data.
    if (!FUNC4(data, data_size, (uint32_t)hdrs.compressed_size,
                    &image_width, &image_height)) {
      return VP8_STATUS_BITSTREAM_ERROR;
    }
  } else {
    if (data_size < VP8L_FRAME_HEADER_SIZE) {
      status = VP8_STATUS_NOT_ENOUGH_DATA;
      goto ReturnWidthHeight;
    }
    // Validates raw VP8L data.
    if (!FUNC5(data, data_size, &image_width, &image_height, has_alpha)) {
      return VP8_STATUS_BITSTREAM_ERROR;
    }
  }
  // Validates image size coherency.
  if (found_vp8x) {
    if (canvas_width != image_width || canvas_height != image_height) {
      return VP8_STATUS_BITSTREAM_ERROR;
    }
  }
  if (headers != NULL) {
    *headers = hdrs;
    headers->offset = data - headers->data;
    FUNC6((uint64_t)(data - headers->data) < MAX_CHUNK_PAYLOAD);
    FUNC6(headers->offset == headers->data_size - data_size);
  }
 ReturnWidthHeight:
  if (status == VP8_STATUS_OK ||
      (status == VP8_STATUS_NOT_ENOUGH_DATA && found_vp8x && headers == NULL)) {
    if (has_alpha != NULL) {
      // If the data did not contain a VP8X/VP8L chunk the only definitive way
      // to set this is by looking for alpha data (from an ALPH chunk).
      *has_alpha |= (hdrs.alpha_data != NULL);
    }
    if (width != NULL) *width = image_width;
    if (height != NULL) *height = image_height;
    return VP8_STATUS_OK;
  } else {
    return status;
  }
}