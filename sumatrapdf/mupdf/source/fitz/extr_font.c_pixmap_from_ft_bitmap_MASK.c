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
typedef  int /*<<< orphan*/  fz_pixmap ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_3__ {scalar_t__ pixel_mode; int rows; int pitch; scalar_t__ buffer; int /*<<< orphan*/  width; } ;
typedef  TYPE_1__ FT_Bitmap ;

/* Variables and functions */
 scalar_t__ FT_PIXEL_MODE_MONO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int,scalar_t__,int) ; 

__attribute__((used)) static fz_pixmap *
FUNC3(fz_context *ctx, int left, int top, FT_Bitmap *bitmap)
{
	(void)FUNC0(bitmap->buffer, "ft_bitmap");
	if (bitmap->pixel_mode == FT_PIXEL_MODE_MONO)
		return FUNC1(ctx, left, top - bitmap->rows, bitmap->width, bitmap->rows, bitmap->buffer + (bitmap->rows-1)*bitmap->pitch, -bitmap->pitch);
	else
		return FUNC2(ctx, left, top - bitmap->rows, bitmap->width, bitmap->rows, bitmap->buffer + (bitmap->rows-1)*bitmap->pitch, -bitmap->pitch);
}