#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* hue; void* saturation; void* contrast; void* brightness; } ;
struct TYPE_10__ {TYPE_1__ procamp; } ;
typedef  TYPE_2__ vlc_vdp_video_field_t ;
struct TYPE_11__ {scalar_t__ context; } ;
typedef  TYPE_3__ picture_t ;
struct TYPE_12__ {TYPE_5__* p_sys; } ;
typedef  TYPE_4__ filter_t ;
struct TYPE_13__ {int /*<<< orphan*/  hue; int /*<<< orphan*/  saturation; int /*<<< orphan*/  contrast; int /*<<< orphan*/  brightness; } ;
typedef  TYPE_5__ filter_sys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static picture_t *FUNC2(filter_t *filter, picture_t *pic)
{
    filter_sys_t *sys = filter->p_sys;
    vlc_vdp_video_field_t *f = (vlc_vdp_video_field_t *)pic->context;

    if (FUNC0(f == NULL))
        return pic;

    f->procamp.brightness = FUNC1(&sys->brightness);
    f->procamp.contrast = FUNC1(&sys->contrast);
    f->procamp.saturation = FUNC1(&sys->saturation);
    f->procamp.hue = FUNC1(&sys->hue);

    return pic;
}