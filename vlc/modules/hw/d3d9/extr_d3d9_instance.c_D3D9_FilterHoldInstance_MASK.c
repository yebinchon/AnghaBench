#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_22__ {int /*<<< orphan*/  surface; } ;
typedef  TYPE_5__ picture_sys_d3d9_t ;
struct TYPE_20__ {int /*<<< orphan*/  i_height; int /*<<< orphan*/  i_width; } ;
struct TYPE_21__ {TYPE_3__ video; } ;
struct TYPE_18__ {scalar_t__ i_chroma; } ;
struct TYPE_19__ {TYPE_1__ video; } ;
struct TYPE_23__ {TYPE_4__ fmt_out; TYPE_2__ fmt_in; } ;
typedef  TYPE_6__ filter_t ;
struct TYPE_24__ {int owner; int /*<<< orphan*/ * dev; } ;
typedef  TYPE_7__ d3d9_device_t ;
struct TYPE_25__ {int /*<<< orphan*/  Height; int /*<<< orphan*/  Width; void* Format; } ;
typedef  TYPE_8__ D3DSURFACE_DESC ;

/* Variables and functions */
 TYPE_5__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 void* FUNC6 (char,char,char,char) ; 
 scalar_t__ VLC_CODEC_D3D9_OPAQUE_10B ; 
 TYPE_7__ device ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  inst_lock ; 
 int /*<<< orphan*/  instances ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(filter_t *filter, d3d9_device_t *out, D3DSURFACE_DESC *dstDesc)
{
    out->dev = NULL;

    picture_t *pic = FUNC7(filter);
    if (!pic)
        return;

    picture_sys_d3d9_t *p_sys = FUNC0(pic);

    FUNC12(&inst_lock);
    if (p_sys)
    {
        if (FUNC1(FUNC5( p_sys->surface, &out->dev )))
            goto done;
        FUNC3(out->dev);
        if (FUNC1(FUNC4( p_sys->surface, dstDesc )))
        {
            out->dev = NULL;
            goto done;
        }

        if (device.dev == NULL)
        {
            device.dev = out->dev;
            instances++;
        }
    }
    else
    {
        *out = device;
        if (device.dev != NULL)
            instances++;

        FUNC8(dstDesc, 0, sizeof(*dstDesc));
        if (filter->fmt_in.video.i_chroma == VLC_CODEC_D3D9_OPAQUE_10B)
            dstDesc->Format = FUNC6('P','0','1','0');
        else
            dstDesc->Format = FUNC6('N','V','1','2');
        dstDesc->Width  = filter->fmt_out.video.i_width;
        dstDesc->Height = filter->fmt_out.video.i_height;
    }

    out->owner = false;
    if (FUNC11(out->dev == NULL))
        FUNC9(filter, "no context available");
    else
        FUNC2(out->dev);

done:
    FUNC13(&inst_lock);

    FUNC10(pic);
}