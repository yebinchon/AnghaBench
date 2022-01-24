#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WebPPicture ;
typedef  int /*<<< orphan*/  FrameRectangle ;

/* Variables and functions */
 int WEBP_MUX_DISPOSE_BACKGROUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int dispose_method,
                                  const FrameRectangle* const rect,
                                  WebPPicture* const curr_canvas) {
  FUNC1(rect != NULL);
  if (dispose_method == WEBP_MUX_DISPOSE_BACKGROUND) {
    FUNC0(curr_canvas, rect);
  }
}