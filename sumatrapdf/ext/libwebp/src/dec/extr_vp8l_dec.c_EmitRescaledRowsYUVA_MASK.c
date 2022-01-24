#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int last_out_row_; TYPE_2__* rescaler; } ;
typedef  TYPE_1__ VP8LDecoder ;
struct TYPE_7__ {int /*<<< orphan*/  src_width; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__ const* const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int const) ; 
 int FUNC3 (TYPE_2__*,int const,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(const VP8LDecoder* const dec,
                                uint8_t* in, int in_stride, int mb_h) {
  int num_lines_in = 0;
  int y_pos = dec->last_out_row_;
  while (num_lines_in < mb_h) {
    const int lines_left = mb_h - num_lines_in;
    const int needed_lines = FUNC2(dec->rescaler, lines_left);
    int lines_imported;
    FUNC1(in, in_stride, dec->rescaler->src_width, needed_lines, 0);
    lines_imported =
        FUNC3(dec->rescaler, lines_left, in, in_stride);
    FUNC4(lines_imported == needed_lines);
    num_lines_in += lines_imported;
    in += needed_lines * in_stride;
    y_pos += FUNC0(dec, y_pos);
  }
  return y_pos;
}