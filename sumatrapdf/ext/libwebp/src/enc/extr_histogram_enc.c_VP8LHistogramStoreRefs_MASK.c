#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  cur_pos; } ;
typedef  TYPE_1__ VP8LRefsCursor ;
typedef  int /*<<< orphan*/  VP8LHistogram ;
typedef  int /*<<< orphan*/  VP8LBackwardRefs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

void FUNC4(const VP8LBackwardRefs* const refs,
                            VP8LHistogram* const histo) {
  VP8LRefsCursor c = FUNC1(refs);
  while (FUNC3(&c)) {
    FUNC0(histo, c.cur_pos, NULL, 0);
    FUNC2(&c);
  }
}