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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  WebPPicture ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int,int,int /*<<< orphan*/ ) ; 

int FUNC1(WebPPicture* picture,
                          const uint8_t* rgba, int rgba_stride) {
  return (picture != NULL && rgba != NULL)
             ? FUNC0(picture, rgba, rgba_stride, 4, 1, 0)
             : 0;
}