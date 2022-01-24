#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  cur_pos; } ;
typedef  TYPE_1__ VP8LRefsCursor ;
struct TYPE_13__ {int /*<<< orphan*/  distance_; int /*<<< orphan*/  alpha_; int /*<<< orphan*/  blue_; int /*<<< orphan*/  red_; int /*<<< orphan*/  literal_; int /*<<< orphan*/  palette_code_bits_; } ;
typedef  TYPE_2__ VP8LHistogram ;
typedef  int /*<<< orphan*/  VP8LBackwardRefs ;
struct TYPE_14__ {int /*<<< orphan*/  distance_; int /*<<< orphan*/  alpha_; int /*<<< orphan*/  blue_; int /*<<< orphan*/  red_; int /*<<< orphan*/  literal_; } ;
typedef  TYPE_3__ CostModel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUM_DISTANCE_CODES ; 
 int /*<<< orphan*/  VALUES_IN_BYTE ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  VP8LDistanceToPlaneCode ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__* const,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC6 (int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(CostModel* const m, int xsize, int cache_bits,
                          const VP8LBackwardRefs* const refs) {
  int ok = 0;
  VP8LRefsCursor c = FUNC6(refs);
  VP8LHistogram* const histo = FUNC1(cache_bits);
  if (histo == NULL) goto Error;

  // The following code is similar to VP8LHistogramCreate but converts the
  // distance to plane code.
  FUNC4(histo, cache_bits, /*init_arrays=*/ 1);
  while (FUNC8(&c)) {
    FUNC3(histo, c.cur_pos, VP8LDistanceToPlaneCode,
                                    xsize);
    FUNC7(&c);
  }

  FUNC0(
      FUNC5(histo->palette_code_bits_),
      histo->literal_, m->literal_);
  FUNC0(
      VALUES_IN_BYTE, histo->red_, m->red_);
  FUNC0(
      VALUES_IN_BYTE, histo->blue_, m->blue_);
  FUNC0(
      VALUES_IN_BYTE, histo->alpha_, m->alpha_);
  FUNC0(
      NUM_DISTANCE_CODES, histo->distance_, m->distance_);
  ok = 1;

 Error:
  FUNC2(histo);
  return ok;
}