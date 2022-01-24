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
 int /*<<< orphan*/  WEBP_INFO_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static WebPInfoStatus FUNC2(const WebPInfo* const webp_info,
                                             const uint8_t* const data,
                                             size_t data_size,
                                             uint64_t* const bit_pos) {
  int simple_filter, level, sharpness, use_lf_delta;
  FUNC0(simple_filter, 1);
  FUNC0(level, 6);
  FUNC0(sharpness, 3);
  FUNC0(use_lf_delta, 1);
  FUNC1("  Simple filter:    %d\n", simple_filter);
  FUNC1("  Level:            %d\n", level);
  FUNC1("  Sharpness:        %d\n", sharpness);
  FUNC1("  Use lf delta:     %d\n", use_lf_delta);
  if (use_lf_delta) {
    int update;
    FUNC0(update, 1);
    FUNC1("  Update lf delta:  %d\n", update);
    if (update) {
      int i;
      for (i = 0; i < 4 + 4; ++i) {
        int temp;
        FUNC0(temp, 1);
        if (temp) FUNC0(temp, 7);
      }
    }
  }
  return WEBP_INFO_OK;
}