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
typedef  int uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int,int const,int,int const,int const,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static uint32_t FUNC2(uint32_t src, uint32_t dst) {
  const uint8_t src_a = (src >> 24) & 0xff;

  if (src_a == 0) {
    return dst;
  } else {
    const uint8_t dst_a = (dst >> 24) & 0xff;
    // This is the approximate integer arithmetic for the actual formula:
    // dst_factor_a = (dst_a * (255 - src_a)) / 255.
    const uint8_t dst_factor_a = (dst_a * (256 - src_a)) >> 8;
    const uint8_t blend_a = src_a + dst_factor_a;
    const uint32_t scale = (1UL << 24) / blend_a;

    const uint8_t blend_r =
        FUNC0(src, src_a, dst, dst_factor_a, scale, 0);
    const uint8_t blend_g =
        FUNC0(src, src_a, dst, dst_factor_a, scale, 8);
    const uint8_t blend_b =
        FUNC0(src, src_a, dst, dst_factor_a, scale, 16);
    FUNC1(src_a + dst_factor_a < 256);

    return (blend_r << 0) |
           (blend_g << 8) |
           (blend_b << 16) |
           ((uint32_t)blend_a << 24);
  }
}