#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_8__ {scalar_t__ i_format; } ;
struct TYPE_9__ {TYPE_3__ audio; } ;
struct TYPE_6__ {scalar_t__ i_format; } ;
struct TYPE_7__ {TYPE_1__ audio; } ;
struct TYPE_10__ {TYPE_4__ fmt_out; TYPE_2__ fmt_in; } ;
typedef  TYPE_5__ filter_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int VLC_EGENERIC ; 

__attribute__((used)) static int
FUNC1( vlc_object_t *p_obj )
{
    filter_t *p_filter = (filter_t *)p_obj;

    /* A resampler doesn't convert the format */
    if( p_filter->fmt_in.audio.i_format != p_filter->fmt_out.audio.i_format )
        return VLC_EGENERIC;
    return FUNC0( p_obj, true );
}