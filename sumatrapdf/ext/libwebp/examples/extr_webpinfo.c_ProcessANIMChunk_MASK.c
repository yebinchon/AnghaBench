#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  WebPInfoStatus ;
struct TYPE_5__ {int bgcolor_; int loop_count_; int /*<<< orphan*/  quiet_; int /*<<< orphan*/ * chunk_counts_; } ;
typedef  TYPE_1__ WebPInfo ;
struct TYPE_6__ {scalar_t__ size_; int /*<<< orphan*/ * payload_; } ;
typedef  TYPE_2__ ChunkData ;

/* Variables and functions */
 scalar_t__ ANIM_CHUNK_SIZE ; 
 size_t CHUNK_ANIM ; 
 scalar_t__ CHUNK_HEADER_SIZE ; 
 size_t CHUNK_VP8X ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int MAX_LOOP_COUNT ; 
 int FUNC2 (int /*<<< orphan*/  const**) ; 
 int FUNC3 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  WEBP_INFO_OK ; 
 int /*<<< orphan*/  WEBP_INFO_PARSE_ERROR ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 

__attribute__((used)) static WebPInfoStatus FUNC5(const ChunkData* const chunk_data,
                                       WebPInfo* const webp_info) {
  const uint8_t* data = chunk_data->payload_;
  if (!webp_info->chunk_counts_[CHUNK_VP8X]) {
    FUNC0("ANIM chunk detected before VP8X chunk.");
    return WEBP_INFO_PARSE_ERROR;
  }
  if (chunk_data->size_ != ANIM_CHUNK_SIZE + CHUNK_HEADER_SIZE) {
    FUNC0("Corrupted ANIM chunk.");
    return WEBP_INFO_PARSE_ERROR;
  }
  webp_info->bgcolor_ = FUNC3(&data);
  webp_info->loop_count_ = FUNC2(&data);
  ++webp_info->chunk_counts_[CHUNK_ANIM];
  if (!webp_info->quiet_) {
    FUNC4("  Background color:(ARGB) %02x %02x %02x %02x\n",
           (webp_info->bgcolor_ >> 24) & 0xff,
           (webp_info->bgcolor_ >> 16) & 0xff,
           (webp_info->bgcolor_ >> 8) & 0xff,
           webp_info->bgcolor_ & 0xff);
    FUNC4("  Loop count      : %d\n", webp_info->loop_count_);
  }
  if (webp_info->loop_count_ > MAX_LOOP_COUNT) {
    FUNC1("Loop count is out of range in ANIM chunk.");
  }
  return WEBP_INFO_OK;
}