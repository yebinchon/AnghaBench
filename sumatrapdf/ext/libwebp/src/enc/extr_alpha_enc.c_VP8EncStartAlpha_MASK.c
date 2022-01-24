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
typedef  int /*<<< orphan*/  WebPWorker ;
struct TYPE_5__ {scalar_t__ thread_level_; int /*<<< orphan*/  alpha_worker_; scalar_t__ has_alpha_; } ;
typedef  TYPE_1__ VP8Encoder ;
struct TYPE_6__ {int /*<<< orphan*/  (* Launch ) (int /*<<< orphan*/ * const) ;int /*<<< orphan*/  (* Reset ) (int /*<<< orphan*/ * const) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_1__* const,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const) ; 

int FUNC4(VP8Encoder* const enc) {
  if (enc->has_alpha_) {
    if (enc->thread_level_ > 0) {
      WebPWorker* const worker = &enc->alpha_worker_;
      // Makes sure worker is good to go.
      if (!FUNC1()->Reset(worker)) {
        return 0;
      }
      FUNC1()->Launch(worker);
      return 1;
    } else {
      return FUNC0(enc, NULL);   // just do the job right away
    }
  }
  return 1;
}