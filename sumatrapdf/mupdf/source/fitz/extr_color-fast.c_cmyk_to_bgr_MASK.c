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
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_color_converter ;

/* Variables and functions */
 int FUNC0 (float const,int) ; 

__attribute__((used)) static void FUNC1(fz_context *ctx, fz_color_converter *cc, const float *cmyk, float *bgr)
{
	bgr[0] = 1 - FUNC0(cmyk[2] + cmyk[3], 1);
	bgr[1] = 1 - FUNC0(cmyk[1] + cmyk[3], 1);
	bgr[2] = 1 - FUNC0(cmyk[0] + cmyk[3], 1);
}