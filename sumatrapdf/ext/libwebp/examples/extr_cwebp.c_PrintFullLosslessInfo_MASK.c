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
struct TYPE_3__ {int lossless_size; int lossless_hdr_size; int lossless_data_size; int lossless_features; int histogram_bits; int transform_bits; int cache_bits; int palette_size; } ;
typedef  TYPE_1__ WebPAuxStats ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC1(const WebPAuxStats* const stats,
                                  const char* const description) {
  FUNC0(stderr, "Lossless-%s compressed size: %d bytes\n",
          description, stats->lossless_size);
  FUNC0(stderr, "  * Header size: %d bytes, image data size: %d\n",
          stats->lossless_hdr_size, stats->lossless_data_size);
  if (stats->lossless_features) {
    FUNC0(stderr, "  * Lossless features used:");
    if (stats->lossless_features & 1) FUNC0(stderr, " PREDICTION");
    if (stats->lossless_features & 2) FUNC0(stderr, " CROSS-COLOR-TRANSFORM");
    if (stats->lossless_features & 4) FUNC0(stderr, " SUBTRACT-GREEN");
    if (stats->lossless_features & 8) FUNC0(stderr, " PALETTE");
    FUNC0(stderr, "\n");
  }
  FUNC0(stderr, "  * Precision Bits: histogram=%d transform=%d cache=%d\n",
          stats->histogram_bits, stats->transform_bits, stats->cache_bits);
  if (stats->palette_size > 0) {
    FUNC0(stderr, "  * Palette size:   %d\n", stats->palette_size);
  }
}