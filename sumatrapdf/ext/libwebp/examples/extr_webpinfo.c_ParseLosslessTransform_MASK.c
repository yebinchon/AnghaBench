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
#define  COLOR_INDEXING_TRANSFORM 130 
#define  CROSS_COLOR_TRANSFORM 129 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
#define  PREDICTOR_TRANSFORM 128 
 int /*<<< orphan*/  WEBP_INFO_OK ; 
 char** kLosslessTransforms ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static WebPInfoStatus FUNC2(WebPInfo* const webp_info,
                                             const uint8_t* const data,
                                             size_t data_size,
                                             uint64_t* const  bit_pos) {
  int use_transform, block_size, n_colors;
  FUNC0(use_transform, 1);
  FUNC1("  Use transform:    %s\n", use_transform ? "Yes" : "No");
  if (use_transform) {
    int type;
    FUNC0(type, 2);
    FUNC1("  1st transform:    %s (%d)\n", kLosslessTransforms[type], type);
    switch (type) {
      case PREDICTOR_TRANSFORM:
      case CROSS_COLOR_TRANSFORM:
        FUNC0(block_size, 3);
        block_size = 1 << (block_size + 2);
        FUNC1("  Tran. block size: %d\n", block_size);
        break;
      case COLOR_INDEXING_TRANSFORM:
        FUNC0(n_colors, 8);
        n_colors += 1;
        FUNC1("  No. of colors:    %d\n", n_colors);
        break;
      default: break;
    }
  }
  return WEBP_INFO_OK;
}