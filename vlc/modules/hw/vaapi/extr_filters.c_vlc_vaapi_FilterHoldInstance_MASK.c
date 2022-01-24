#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ type; int /*<<< orphan*/  opaque; } ;
typedef  TYPE_2__ vlc_decoder_device ;
struct TYPE_11__ {int /*<<< orphan*/  i_chroma; } ;
struct TYPE_13__ {scalar_t__ p_sys; TYPE_1__ format; } ;
typedef  TYPE_3__ picture_t ;
typedef  int /*<<< orphan*/  filter_t ;
typedef  int /*<<< orphan*/  VADisplay ;
struct TYPE_14__ {int /*<<< orphan*/  lock; TYPE_2__* dec_device; int /*<<< orphan*/ * owner; } ;

/* Variables and functions */
 scalar_t__ VLC_DECODER_DEVICE_VAAPI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_9__ holder ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 

vlc_decoder_device *
FUNC8(filter_t *filter, VADisplay *dpy)
{

    picture_t *pic = FUNC1(filter);
    if (!pic)
        return NULL;

    if (!FUNC6(pic->format.i_chroma))
    {
        FUNC2(pic);
        return NULL;
    }

    vlc_decoder_device *dec_device = NULL;

    FUNC4(&holder.lock);
    if (holder.dec_device != NULL)
    {
        dec_device = FUNC3(holder.dec_device);
        *dpy = dec_device->opaque;
    }
    else
    {
        holder.owner = filter;
        holder.dec_device = dec_device = pic->p_sys ?
            FUNC7(pic->p_sys, dpy) : NULL;
        FUNC0(dec_device == NULL || dec_device->type == VLC_DECODER_DEVICE_VAAPI);
    }
    FUNC5(&holder.lock);
    FUNC2(pic);

    return dec_device;
}