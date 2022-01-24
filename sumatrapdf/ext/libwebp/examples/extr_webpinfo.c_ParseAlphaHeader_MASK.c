#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ WebPInfoStatus ;
typedef  int /*<<< orphan*/  WebPInfo ;
struct TYPE_3__ {int* payload_; size_t size_; } ;
typedef  TYPE_1__ ChunkData ;

/* Variables and functions */
 size_t ALPHA_HEADER_LEN ; 
 int const ALPHA_LOSSLESS_COMPRESSION ; 
 int const ALPHA_PREPROCESSED_LEVELS ; 
 size_t CHUNK_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ * const,int const*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ WEBP_INFO_BITSTREAM_ERROR ; 
 scalar_t__ WEBP_INFO_OK ; 
 scalar_t__ WEBP_INFO_TRUNCATED_DATA ; 
 char** kAlphaFilterMethods ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static WebPInfoStatus FUNC4(const ChunkData* const chunk_data,
                                       WebPInfo* const webp_info) {
  const uint8_t* data = chunk_data->payload_;
  size_t data_size = chunk_data->size_ - CHUNK_HEADER_SIZE;
  if (data_size <= ALPHA_HEADER_LEN) {
    FUNC0("Truncated ALPH chunk.");
    return WEBP_INFO_TRUNCATED_DATA;
  }
  FUNC3("  Parsing ALPH chunk...\n");
  {
    const int compression_method = (data[0] >> 0) & 0x03;
    const int filter = (data[0] >> 2) & 0x03;
    const int pre_processing = (data[0] >> 4) & 0x03;
    const int reserved_bits = (data[0] >> 6) & 0x03;
    FUNC3("  Compression:      %d\n", compression_method);
    FUNC3("  Filter:           %s (%d)\n",
           kAlphaFilterMethods[filter], filter);
    FUNC3("  Pre-processing:   %d\n", pre_processing);
    if (compression_method > ALPHA_LOSSLESS_COMPRESSION) {
      FUNC0("Invalid Alpha compression method.");
      return WEBP_INFO_BITSTREAM_ERROR;
    }
    if (pre_processing > ALPHA_PREPROCESSED_LEVELS) {
      FUNC0("Invalid Alpha pre-processing method.");
      return WEBP_INFO_BITSTREAM_ERROR;
    }
    if (reserved_bits != 0) {
      FUNC1("Reserved bits in ALPH chunk header are not all 0.");
    }
    data += ALPHA_HEADER_LEN;
    data_size -= ALPHA_HEADER_LEN;
    if (compression_method == ALPHA_LOSSLESS_COMPRESSION) {
      uint64_t bit_pos = 0;
      WebPInfoStatus status =
          FUNC2(webp_info, data, data_size, &bit_pos);
      if (status != WEBP_INFO_OK) return status;
    }
  }
  return WEBP_INFO_OK;
}