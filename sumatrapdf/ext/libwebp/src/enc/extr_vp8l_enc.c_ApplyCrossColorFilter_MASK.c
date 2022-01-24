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
typedef  int /*<<< orphan*/  WebPEncodingError ;
typedef  int /*<<< orphan*/  VP8LHashChain ;
struct TYPE_3__ {int transform_bits_; int /*<<< orphan*/ * refs_; int /*<<< orphan*/  hash_chain_; int /*<<< orphan*/  transform_data_; int /*<<< orphan*/  argb_; } ;
typedef  TYPE_1__ VP8LEncoder ;
typedef  int /*<<< orphan*/  VP8LBitWriter ;
typedef  int /*<<< orphan*/  VP8LBackwardRefs ;

/* Variables and functions */
 int const CROSS_COLOR_TRANSFORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const,int const,int,int) ; 
 int const TRANSFORM_PRESENT ; 
 int /*<<< orphan*/  FUNC1 (int,int,int const,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int const,int) ; 
 int FUNC3 (int,int const) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static WebPEncodingError FUNC5(const VP8LEncoder* const enc,
                                               int width, int height,
                                               int quality, int low_effort,
                                               VP8LBitWriter* const bw) {
  const int ccolor_transform_bits = enc->transform_bits_;
  const int transform_width = FUNC3(width, ccolor_transform_bits);
  const int transform_height = FUNC3(height, ccolor_transform_bits);

  FUNC1(width, height, ccolor_transform_bits, quality,
                          enc->argb_, enc->transform_data_);
  FUNC2(bw, TRANSFORM_PRESENT, 1);
  FUNC2(bw, CROSS_COLOR_TRANSFORM, 2);
  FUNC4(ccolor_transform_bits >= 2);
  FUNC2(bw, ccolor_transform_bits - 2, 3);
  return FUNC0(
      bw, enc->transform_data_, (VP8LHashChain*)&enc->hash_chain_,
      (VP8LBackwardRefs*)&enc->refs_[0],  // cast const away
      (VP8LBackwardRefs*)&enc->refs_[1], transform_width, transform_height,
      quality, low_effort);
}