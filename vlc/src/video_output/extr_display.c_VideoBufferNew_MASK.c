#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ i_chroma; scalar_t__ i_width; scalar_t__ i_height; } ;
struct TYPE_12__ {TYPE_3__ fmt; } ;
typedef  TYPE_4__ vout_display_t ;
struct TYPE_13__ {scalar_t__ i_chroma; scalar_t__ i_width; scalar_t__ i_height; } ;
typedef  TYPE_5__ video_format_t ;
typedef  int /*<<< orphan*/  picture_t ;
typedef  int /*<<< orphan*/  picture_pool_t ;
struct TYPE_10__ {TYPE_5__ video; } ;
struct TYPE_9__ {TYPE_4__* sys; } ;
struct TYPE_14__ {TYPE_2__ fmt_out; TYPE_1__ owner; } ;
typedef  TYPE_6__ filter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_4__*,int) ; 

__attribute__((used)) static picture_t *FUNC3(filter_t *filter)
{
    vout_display_t *vd = filter->owner.sys;
    const video_format_t *fmt = &filter->fmt_out.video;

    FUNC0(vd->fmt.i_chroma == fmt->i_chroma &&
           vd->fmt.i_width  == fmt->i_width  &&
           vd->fmt.i_height == fmt->i_height);

    picture_pool_t *pool = FUNC2(vd, 3);
    if (!pool)
        return NULL;
    return FUNC1(pool);
}