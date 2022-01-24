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
typedef  int uint64_t ;
typedef  int const uint32_t ;
typedef  scalar_t__ WebPInfoStatus ;
typedef  int /*<<< orphan*/  WebPInfo ;
struct TYPE_3__ {int* payload_; scalar_t__ size_; } ;
typedef  TYPE_1__ ChunkData ;

/* Variables and functions */
 scalar_t__ CHUNK_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const* const,int const*,size_t,int* const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const* const,int const*,size_t,int* const) ; 
 scalar_t__ WEBP_INFO_BITSTREAM_ERROR ; 
 scalar_t__ WEBP_INFO_OK ; 
 scalar_t__ WEBP_INFO_TRUNCATED_DATA ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static WebPInfoStatus FUNC7(const ChunkData* const chunk_data,
                                       const WebPInfo* const webp_info) {
  const uint8_t* data = chunk_data->payload_;
  size_t data_size = chunk_data->size_ - CHUNK_HEADER_SIZE;
  const uint32_t bits = (uint32_t)data[0] | (data[1] << 8) | (data[2] << 16);
  const int key_frame = !(bits & 1);
  const int profile = (bits >> 1) & 7;
  const int display = (bits >> 4) & 1;
  const uint32_t partition0_length = (bits >> 5);
  WebPInfoStatus status = WEBP_INFO_OK;
  uint64_t bit_position = 0;
  uint64_t* const bit_pos = &bit_position;
  int colorspace, clamp_type;
  FUNC6("  Parsing lossy bitstream...\n");
  // Calling WebPGetFeatures() in ProcessImageChunk() should ensure this.
  FUNC5(chunk_data->size_ >= CHUNK_HEADER_SIZE + 10);
  if (profile > 3) {
    FUNC2("Unknown profile.");
    return WEBP_INFO_BITSTREAM_ERROR;
  }
  if (!display) {
    FUNC2("Frame is not displayable.");
    return WEBP_INFO_BITSTREAM_ERROR;
  }
  data += 3;
  data_size -= 3;
  FUNC6("  Key frame:        %s\n"
         "  Profile:          %d\n"
         "  Display:          %s\n"
         "  Part. 0 length:   %d\n",
         key_frame ? "Yes" : "No", profile,
         display ? "Yes" : "No", partition0_length);
  if (key_frame) {
    if (!(data[0] == 0x9d && data[1] == 0x01 && data[2] == 0x2a)) {
      FUNC2("Invalid lossy bitstream signature.");
      return WEBP_INFO_BITSTREAM_ERROR;
    }
    FUNC6("  Width:            %d\n"
           "  X scale:          %d\n"
           "  Height:           %d\n"
           "  Y scale:          %d\n",
           ((data[4] << 8) | data[3]) & 0x3fff, data[4] >> 6,
           ((data[6] << 8) | data[5]) & 0x3fff, data[6] >> 6);
    data += 7;
    data_size -= 7;
  } else {
    FUNC2("Non-keyframe detected in lossy bitstream.");
    return WEBP_INFO_BITSTREAM_ERROR;
  }
  if (partition0_length >= data_size) {
    FUNC2("Bad partition length.");
    return WEBP_INFO_BITSTREAM_ERROR;
  }
  FUNC0(colorspace, 1);
  FUNC0(clamp_type, 1);
  FUNC6("  Color space:      %d\n", colorspace);
  FUNC6("  Clamp type:       %d\n", clamp_type);
  status = FUNC4(webp_info, data, data_size, bit_pos);
  if (status != WEBP_INFO_OK) return status;
  status = FUNC3(webp_info, data, data_size, bit_pos);
  if (status != WEBP_INFO_OK) return status;
  {  // Partition number and size.
    const uint8_t* part_size = data + partition0_length;
    int num_parts, i;
    size_t part_data_size;
    FUNC0(num_parts, 2);
    num_parts = 1 << num_parts;
    if ((int)(data_size - partition0_length) < (num_parts - 1) * 3) {
      FUNC2("Truncated lossy bitstream.");
      return WEBP_INFO_TRUNCATED_DATA;
    }
    part_data_size = data_size - partition0_length - (num_parts - 1) * 3;
    FUNC6("  Total partitions: %d\n", num_parts);
    for (i = 1; i < num_parts; ++i) {
      const size_t psize =
          part_size[0] | (part_size[1] << 8) | (part_size[2] << 16);
      if (psize > part_data_size) {
        FUNC2("Truncated partition.");
        return WEBP_INFO_TRUNCATED_DATA;
      }
      FUNC6("  Part. %d length:   %d\n", i, (int)psize);
      part_data_size -= psize;
      part_size += 3;
    }
  }
  // Quantizer.
  {
    int base_q, bit;
    int dq_y1_dc = 0, dq_y2_dc = 0, dq_y2_ac = 0, dq_uv_dc = 0, dq_uv_ac = 0;
    FUNC0(base_q, 7);
    FUNC0(bit, 1);
    if (bit) FUNC1(dq_y1_dc, 4);
    FUNC0(bit, 1);
    if (bit) FUNC1(dq_y2_dc, 4);
    FUNC0(bit, 1);
    if (bit) FUNC1(dq_y2_ac, 4);
    FUNC0(bit, 1);
    if (bit) FUNC1(dq_uv_dc, 4);
    FUNC0(bit, 1);
    if (bit) FUNC1(dq_uv_ac, 4);
    FUNC6("  Base Q:           %d\n", base_q);
    FUNC6("  DQ Y1 DC:         %d\n", dq_y1_dc);
    FUNC6("  DQ Y2 DC:         %d\n", dq_y2_dc);
    FUNC6("  DQ Y2 AC:         %d\n", dq_y2_ac);
    FUNC6("  DQ UV DC:         %d\n", dq_uv_dc);
    FUNC6("  DQ UV AC:         %d\n", dq_uv_ac);
  }
  if ((*bit_pos >> 3) >= partition0_length) {
    FUNC2("Truncated lossy bitstream.");
    return WEBP_INFO_TRUNCATED_DATA;
  }
  return WEBP_INFO_OK;
}