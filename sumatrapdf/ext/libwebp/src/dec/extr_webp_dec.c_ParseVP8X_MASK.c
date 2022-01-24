#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  VP8StatusCode ;

/* Variables and functions */
 size_t CHUNK_HEADER_SIZE ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 void* FUNC1 (int /*<<< orphan*/  const*) ; 
 int MAX_IMAGE_AREA ; 
 int TAG_SIZE ; 
 scalar_t__ const VP8X_CHUNK_SIZE ; 
 int /*<<< orphan*/  VP8_STATUS_BITSTREAM_ERROR ; 
 int /*<<< orphan*/  VP8_STATUS_NOT_ENOUGH_DATA ; 
 int /*<<< orphan*/  VP8_STATUS_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,char*,int) ; 

__attribute__((used)) static VP8StatusCode FUNC4(const uint8_t** const data,
                               size_t* const data_size,
                               int* const found_vp8x,
                               int* const width_ptr, int* const height_ptr,
                               uint32_t* const flags_ptr) {
  const uint32_t vp8x_size = CHUNK_HEADER_SIZE + VP8X_CHUNK_SIZE;
  FUNC2(data != NULL);
  FUNC2(data_size != NULL);
  FUNC2(found_vp8x != NULL);

  *found_vp8x = 0;

  if (*data_size < CHUNK_HEADER_SIZE) {
    return VP8_STATUS_NOT_ENOUGH_DATA;  // Insufficient data.
  }

  if (!FUNC3(*data, "VP8X", TAG_SIZE)) {
    int width, height;
    uint32_t flags;
    const uint32_t chunk_size = FUNC1(*data + TAG_SIZE);
    if (chunk_size != VP8X_CHUNK_SIZE) {
      return VP8_STATUS_BITSTREAM_ERROR;  // Wrong chunk size.
    }

    // Verify if enough data is available to validate the VP8X chunk.
    if (*data_size < vp8x_size) {
      return VP8_STATUS_NOT_ENOUGH_DATA;  // Insufficient data.
    }
    flags = FUNC1(*data + 8);
    width = 1 + FUNC0(*data + 12);
    height = 1 + FUNC0(*data + 15);
    if (width * (uint64_t)height >= MAX_IMAGE_AREA) {
      return VP8_STATUS_BITSTREAM_ERROR;  // image is too large
    }

    if (flags_ptr != NULL) *flags_ptr = flags;
    if (width_ptr != NULL) *width_ptr = width;
    if (height_ptr != NULL) *height_ptr = height;
    // Skip over VP8X header bytes.
    *data += vp8x_size;
    *data_size -= vp8x_size;
    *found_vp8x = 1;
  }
  return VP8_STATUS_OK;
}