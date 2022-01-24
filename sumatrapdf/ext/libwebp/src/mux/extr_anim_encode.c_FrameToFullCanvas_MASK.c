#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WebPPicture ;
typedef  int /*<<< orphan*/  WebPMuxFrameInfo ;
struct TYPE_10__ {scalar_t__ size; } ;
typedef  TYPE_2__ WebPMemoryWriter ;
typedef  int /*<<< orphan*/  WebPData ;
struct TYPE_9__ {scalar_t__ allow_mixed; } ;
struct TYPE_11__ {int /*<<< orphan*/  last_config_reversed_; TYPE_1__ options_; int /*<<< orphan*/  last_config_; int /*<<< orphan*/  curr_canvas_copy_; } ;
typedef  TYPE_3__ WebPAnimEncoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const* const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(WebPAnimEncoder* const enc,
                             const WebPMuxFrameInfo* const frame,
                             WebPData* const full_image) {
  WebPPicture* const canvas_buf = &enc->curr_canvas_copy_;
  WebPMemoryWriter mem1, mem2;
  FUNC4(&mem1);
  FUNC4(&mem2);

  if (!FUNC0(frame, canvas_buf)) goto Err;
  if (!FUNC1(&enc->last_config_, canvas_buf, &mem1)) goto Err;
  FUNC2(&mem1, full_image);

  if (enc->options_.allow_mixed) {
    if (!FUNC1(&enc->last_config_reversed_, canvas_buf, &mem2)) goto Err;
    if (mem2.size < mem1.size) {
      FUNC2(&mem2, full_image);
      FUNC3(&mem1);
    } else {
      FUNC3(&mem2);
    }
  }
  return 1;

 Err:
  FUNC3(&mem1);
  FUNC3(&mem2);
  return 0;
}