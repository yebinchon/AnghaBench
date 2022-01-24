#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  VP8EncIterator ;
struct TYPE_2__ {int /*<<< orphan*/  delta_progress; int /*<<< orphan*/  uv_alpha; int /*<<< orphan*/  alpha; int /*<<< orphan*/  alphas; } ;
typedef  TYPE_1__ SegmentJob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ * const) ; 
 int FUNC4 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WEBP_ALIGN_CST ; 

__attribute__((used)) static int FUNC6(void* arg1, void* arg2) {
  SegmentJob* const job = (SegmentJob*)arg1;
  VP8EncIterator* const it = (VP8EncIterator*)arg2;
  int ok = 1;
  if (!FUNC2(it)) {
    uint8_t tmp[32 + WEBP_ALIGN_CST];
    uint8_t* const scratch = (uint8_t*)FUNC5(tmp);
    do {
      // Let's pretend we have perfect lossless reconstruction.
      FUNC1(it, scratch);
      FUNC0(it, job->alphas, &job->alpha, &job->uv_alpha);
      ok = FUNC4(it, job->delta_progress);
    } while (ok && FUNC3(it));
  }
  return ok;
}