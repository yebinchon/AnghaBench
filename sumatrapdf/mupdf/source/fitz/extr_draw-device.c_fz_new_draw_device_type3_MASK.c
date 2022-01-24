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
typedef  int /*<<< orphan*/  fz_pixmap ;
typedef  int /*<<< orphan*/  fz_matrix ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ fz_draw_device ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_DRAWDEV_FLAGS_TYPE3 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

fz_device *
FUNC1(fz_context *ctx, fz_matrix transform, fz_pixmap *dest)
{
	fz_draw_device *dev = (fz_draw_device*)FUNC0(ctx, transform, dest);
	dev->flags |= FZ_DRAWDEV_FLAGS_TYPE3;
	return (fz_device*)dev;
}