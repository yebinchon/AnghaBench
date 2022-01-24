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
struct TYPE_5__ {int width; int height; TYPE_2__* stats; } ;
typedef  TYPE_1__ WebPPicture ;
struct TYPE_6__ {int coded_size; double* PSNR; int* block_count; int alpha_data_size; float* header_bytes; int** residual_bytes; scalar_t__ lossless_size; int /*<<< orphan*/  segment_level; int /*<<< orphan*/  segment_quant; int /*<<< orphan*/  segment_size; } ;
typedef  TYPE_2__ WebPAuxStats ;
typedef  int /*<<< orphan*/  W_CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,float,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const* const,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(const WebPPicture* const pic, int short_output,
                                int full_details,
                                const char* const file_name) {
  const WebPAuxStats* const stats = pic->stats;
  if (short_output) {
    FUNC5(stderr, "%7d %2.2f\n", stats->coded_size, stats->PSNR[3]);
  } else {
    const int num_i4 = stats->block_count[0];
    const int num_i16 = stats->block_count[1];
    const int num_skip = stats->block_count[2];
    const int total = num_i4 + num_i16;
    FUNC4(stderr, "File:      %s\n", (const W_CHAR*)file_name);
    FUNC5(stderr, "Dimension: %d x %d%s\n",
            pic->width, pic->height,
            stats->alpha_data_size ? " (with alpha)" : "");
    FUNC5(stderr, "Output:    "
            "%d bytes Y-U-V-All-PSNR %2.2f %2.2f %2.2f   %2.2f dB\n"
            "           (%.2f bpp)\n",
            stats->coded_size,
            stats->PSNR[0], stats->PSNR[1], stats->PSNR[2], stats->PSNR[3],
            8.f * stats->coded_size / pic->width / pic->height);
    if (total > 0) {
      int totals[4] = { 0, 0, 0, 0 };
      FUNC5(stderr, "block count:  intra4:     %6d  (%.2f%%)\n"
                      "              intra16:    %6d  (%.2f%%)\n"
                      "              skipped:    %6d  (%.2f%%)\n",
              num_i4, 100.f * num_i4 / total,
              num_i16, 100.f * num_i16 / total,
              num_skip, 100.f * num_skip / total);
      FUNC5(stderr, "bytes used:  header:         %6f  (%.1f%%)\n"
                      "             mode-partition: %6f  (%.1f%%)\n",
              stats->header_bytes[0],
              100.f * stats->header_bytes[0] / stats->coded_size,
              stats->header_bytes[1],
              100.f * stats->header_bytes[1] / stats->coded_size);
      if (stats->alpha_data_size > 0) {
        FUNC5(stderr, "             transparency:   %6d (%.1f dB)\n",
                stats->alpha_data_size, stats->PSNR[4]);
      }
      FUNC5(stderr, " Residuals bytes  "
                      "|segment 1|segment 2|segment 3"
                      "|segment 4|  total\n");
      if (full_details) {
        FUNC5(stderr, "  intra4-coeffs:  ");
        FUNC0(stats->residual_bytes[0], stats->coded_size, totals);
        FUNC5(stderr, " intra16-coeffs:  ");
        FUNC0(stats->residual_bytes[1], stats->coded_size, totals);
        FUNC5(stderr, "  chroma coeffs:  ");
        FUNC0(stats->residual_bytes[2], stats->coded_size, totals);
      }
      FUNC5(stderr, "    macroblocks:  ");
      FUNC2(stats->segment_size);
      FUNC5(stderr, "      quantizer:  ");
      FUNC3(stats->segment_quant);
      FUNC5(stderr, "   filter level:  ");
      FUNC3(stats->segment_level);
      if (full_details) {
        FUNC5(stderr, "------------------+---------");
        FUNC5(stderr, "+---------+---------+---------+-----------------\n");
        FUNC5(stderr, " segments total:  ");
        FUNC0(totals, stats->coded_size, NULL);
      }
    }
    if (stats->lossless_size > 0) {
      FUNC1(stats, "alpha");
    }
  }
}