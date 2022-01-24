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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  WebPInfoStatus ;
typedef  int /*<<< orphan*/  WebPInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  WEBP_INFO_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 

__attribute__((used)) static WebPInfoStatus FUNC3(const WebPInfo* const webp_info,
                                              const uint8_t* const data,
                                              size_t data_size,
                                              uint64_t* const bit_pos) {
  int use_segment;
  FUNC0(use_segment, 1);
  FUNC2("  Use segment:      %d\n", use_segment);
  if (use_segment) {
    int update_map, update_data;
    FUNC0(update_map, 1);
    FUNC0(update_data, 1);
    FUNC2("  Update map:       %d\n"
           "  Update data:      %d\n",
           update_map, update_data);
    if (update_data) {
      int i, a_delta;
      int quantizer[4] = {0, 0, 0, 0};
      int filter_strength[4] = {0, 0, 0, 0};
      FUNC0(a_delta, 1);
      FUNC2("  Absolute delta:   %d\n", a_delta);
      for (i = 0; i < 4; ++i) {
        int bit;
        FUNC0(bit, 1);
        if (bit) FUNC1(quantizer[i], 7);
      }
      for (i = 0; i < 4; ++i) {
        int bit;
        FUNC0(bit, 1);
        if (bit) FUNC1(filter_strength[i], 6);
      }
      FUNC2("  Quantizer:        %d %d %d %d\n", quantizer[0], quantizer[1],
             quantizer[2], quantizer[3]);
      FUNC2("  Filter strength:  %d %d %d %d\n", filter_strength[0],
             filter_strength[1], filter_strength[2], filter_strength[3]);
    }
    if (update_map) {
      int i;
      int prob_segment[3] = {255, 255, 255};
      for (i = 0; i < 3; ++i) {
        int bit;
        FUNC0(bit, 1);
        if (bit) FUNC0(prob_segment[i], 8);
      }
      FUNC2("  Prob segment:     %d %d %d\n",
             prob_segment[0], prob_segment[1], prob_segment[2]);
    }
  }
  return WEBP_INFO_OK;
}