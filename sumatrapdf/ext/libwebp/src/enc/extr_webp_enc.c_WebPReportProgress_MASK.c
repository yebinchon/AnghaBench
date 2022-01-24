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
struct TYPE_5__ {int /*<<< orphan*/  (* progress_hook ) (int,TYPE_1__ const* const) ;} ;
typedef  TYPE_1__ WebPPicture ;

/* Variables and functions */
 int /*<<< orphan*/  VP8_ENC_ERROR_USER_ABORT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__ const* const) ; 

int FUNC2(const WebPPicture* const pic,
                       int percent, int* const percent_store) {
  if (percent_store != NULL && percent != *percent_store) {
    *percent_store = percent;
    if (pic->progress_hook && !pic->progress_hook(percent, pic)) {
      // user abort requested
      FUNC0(pic, VP8_ENC_ERROR_USER_ABORT);
      return 0;
    }
  }
  return 1;  // ok
}