#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * cur_pos; } ;
typedef  TYPE_1__ VP8LRefsCursor ;
struct TYPE_9__ {int /*<<< orphan*/ ** histograms; } ;
typedef  TYPE_2__ VP8LHistogramSet ;
typedef  int /*<<< orphan*/  VP8LHistogram ;
typedef  int /*<<< orphan*/  VP8LBackwardRefs ;
typedef  int /*<<< orphan*/  PixOrCopy ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const* const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__* const) ; 
 TYPE_1__ FUNC3 (int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(
    int xsize, int histo_bits, const VP8LBackwardRefs* const backward_refs,
    VP8LHistogramSet* const image_histo) {
  int x = 0, y = 0;
  const int histo_xsize = FUNC6(xsize, histo_bits);
  VP8LHistogram** const histograms = image_histo->histograms;
  VP8LRefsCursor c = FUNC3(backward_refs);
  FUNC7(histo_bits > 0);
  FUNC2(image_histo);
  while (FUNC5(&c)) {
    const PixOrCopy* const v = c.cur_pos;
    const int ix = (y >> histo_bits) * histo_xsize + (x >> histo_bits);
    FUNC1(histograms[ix], v, NULL, 0);
    x += FUNC0(v);
    while (x >= xsize) {
      x -= xsize;
      ++y;
    }
    FUNC4(&c);
  }
}