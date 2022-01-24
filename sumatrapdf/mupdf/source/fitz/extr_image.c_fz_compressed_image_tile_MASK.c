#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_pixmap ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_4__ {scalar_t__ get_pixmap; } ;
struct TYPE_5__ {int /*<<< orphan*/ * tile; TYPE_1__ super; } ;
typedef  TYPE_2__ fz_compressed_image ;

/* Variables and functions */
 scalar_t__ compressed_image_get_pixmap ; 

fz_pixmap *FUNC0(fz_context *ctx, fz_compressed_image *image)
{
	if (image == NULL || image->super.get_pixmap != compressed_image_get_pixmap)
		return NULL;
	return ((fz_compressed_image *)image)->tile;
}