#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct aom_image {int /*<<< orphan*/ * stride; int /*<<< orphan*/ * planes; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_pitch; int /*<<< orphan*/  p_pixels; } ;
typedef  TYPE_1__ plane_t ;
struct TYPE_7__ {int i_planes; TYPE_1__* p; } ;
typedef  TYPE_2__ picture_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(const struct aom_image *img, picture_t *pic)
{
    for (int plane = 0; plane < pic->i_planes; plane++ ) {
        plane_t src_plane = pic->p[plane];
        src_plane.p_pixels = img->planes[plane];
        src_plane.i_pitch = img->stride[plane];
        FUNC0(&pic->p[plane], &src_plane);
    }
}