#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WebPPicture ;
struct TYPE_6__ {int width_; int height_; scalar_t__ x_offset_; scalar_t__ y_offset_; } ;
typedef  TYPE_1__ FrameRectangle ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const,TYPE_1__* const,int,float) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const) ; 
 int FUNC3 (int /*<<< orphan*/  const* const,scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(const WebPPicture* const prev_canvas,
                      const WebPPicture* const curr_canvas, int is_key_frame,
                      int is_first_frame, int empty_rect_allowed,
                      int is_lossless, float quality,
                      FrameRectangle* const rect,
                      WebPPicture* const sub_frame) {
  if (!is_key_frame || is_first_frame) {  // Optimize frame rectangle.
    // Note: This behaves as expected for first frame, as 'prev_canvas' is
    // initialized to a fully transparent canvas in the beginning.
    FUNC1(prev_canvas, curr_canvas, rect,
                            is_lossless, quality);
  }

  if (FUNC0(rect)) {
    if (empty_rect_allowed) {  // No need to get 'sub_frame'.
      return 1;
    } else {                   // Force a 1x1 rectangle.
      rect->width_ = 1;
      rect->height_ = 1;
      FUNC4(rect->x_offset_ == 0);
      FUNC4(rect->y_offset_ == 0);
    }
  }

  FUNC2(rect);
  return FUNC3(curr_canvas, rect->x_offset_, rect->y_offset_,
                         rect->width_, rect->height_, sub_frame);
}