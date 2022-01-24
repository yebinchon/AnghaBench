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
struct TYPE_3__ {int /*<<< orphan*/ * distance_; int /*<<< orphan*/ * literal_; int /*<<< orphan*/ * blue_; int /*<<< orphan*/ * red_; int /*<<< orphan*/ * alpha_; } ;
typedef  TYPE_1__ VP8LHistogram ;
typedef  int /*<<< orphan*/  PixOrCopy ;

/* Variables and functions */
 int NUM_LENGTH_CODES ; 
 int NUM_LITERAL_CODES ; 
 int FUNC0 (int /*<<< orphan*/  const* const) ; 
 int FUNC1 (int /*<<< orphan*/  const* const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const* const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const* const) ; 
 int FUNC4 (int /*<<< orphan*/  const* const) ; 
 size_t FUNC5 (int /*<<< orphan*/  const* const,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int*,int*) ; 

void FUNC7(VP8LHistogram* const histo,
                                     const PixOrCopy* const v,
                                     int (*const distance_modifier)(int, int),
                                     int distance_modifier_arg0) {
  if (FUNC3(v)) {
    ++histo->alpha_[FUNC5(v, 3)];
    ++histo->red_[FUNC5(v, 2)];
    ++histo->literal_[FUNC5(v, 1)];
    ++histo->blue_[FUNC5(v, 0)];
  } else if (FUNC2(v)) {
    const int literal_ix =
        NUM_LITERAL_CODES + NUM_LENGTH_CODES + FUNC0(v);
    ++histo->literal_[literal_ix];
  } else {
    int code, extra_bits;
    FUNC6(FUNC4(v), &code, &extra_bits);
    ++histo->literal_[NUM_LITERAL_CODES + code];
    if (distance_modifier == NULL) {
      FUNC6(FUNC1(v), &code, &extra_bits);
    } else {
      FUNC6(
          distance_modifier(distance_modifier_arg0, FUNC1(v)),
          &code, &extra_bits);
    }
    ++histo->distance_[code];
  }
}