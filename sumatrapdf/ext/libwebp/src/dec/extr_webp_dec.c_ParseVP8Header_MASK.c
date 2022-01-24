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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  VP8StatusCode ;

/* Variables and functions */
 size_t CHUNK_HEADER_SIZE ; 
 size_t FUNC0 (int /*<<< orphan*/  const* const) ; 
 int TAG_SIZE ; 
 int FUNC1 (int /*<<< orphan*/  const* const,size_t) ; 
 int /*<<< orphan*/  VP8_STATUS_BITSTREAM_ERROR ; 
 int /*<<< orphan*/  VP8_STATUS_NOT_ENOUGH_DATA ; 
 int /*<<< orphan*/  VP8_STATUS_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const* const,char*,int) ; 

__attribute__((used)) static VP8StatusCode FUNC4(const uint8_t** const data_ptr,
                                    size_t* const data_size, int have_all_data,
                                    size_t riff_size, size_t* const chunk_size,
                                    int* const is_lossless) {
  const uint8_t* const data = *data_ptr;
  const int is_vp8 = !FUNC3(data, "VP8 ", TAG_SIZE);
  const int is_vp8l = !FUNC3(data, "VP8L", TAG_SIZE);
  const uint32_t minimal_size =
      TAG_SIZE + CHUNK_HEADER_SIZE;  // "WEBP" + "VP8 nnnn" OR
                                     // "WEBP" + "VP8Lnnnn"
  FUNC2(data != NULL);
  FUNC2(data_size != NULL);
  FUNC2(chunk_size != NULL);
  FUNC2(is_lossless != NULL);

  if (*data_size < CHUNK_HEADER_SIZE) {
    return VP8_STATUS_NOT_ENOUGH_DATA;  // Insufficient data.
  }

  if (is_vp8 || is_vp8l) {
    // Bitstream contains VP8/VP8L header.
    const uint32_t size = FUNC0(data + TAG_SIZE);
    if ((riff_size >= minimal_size) && (size > riff_size - minimal_size)) {
      return VP8_STATUS_BITSTREAM_ERROR;  // Inconsistent size information.
    }
    if (have_all_data && (size > *data_size - CHUNK_HEADER_SIZE)) {
      return VP8_STATUS_NOT_ENOUGH_DATA;  // Truncated bitstream.
    }
    // Skip over CHUNK_HEADER_SIZE bytes from VP8/VP8L Header.
    *chunk_size = size;
    *data_ptr += CHUNK_HEADER_SIZE;
    *data_size -= CHUNK_HEADER_SIZE;
    *is_lossless = is_vp8l;
  } else {
    // Raw VP8/VP8L bitstream (no header).
    *is_lossless = FUNC1(data, *data_size);
    *chunk_size = *data_size;
  }

  return VP8_STATUS_OK;
}