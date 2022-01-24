#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  orientation; } ;
struct TYPE_15__ {TYPE_1__ video; } ;
struct TYPE_13__ {int /*<<< orphan*/  fmt_in; TYPE_8__ fmt_out; } ;
typedef  TYPE_2__ filter_t ;
struct TYPE_14__ {int /*<<< orphan*/  video; } ;
typedef  TYPE_3__ es_format_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_8__*,int /*<<< orphan*/ *) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6( filter_t *p_filter )
{

    es_format_t fmt_mid;
    int i_ret;

    /* Lets try transform first, then (potentially) resize+chroma */
    FUNC4( p_filter, "Trying to build transform, then chroma+resize" );
    FUNC3( &fmt_mid, &p_filter->fmt_in );
    FUNC5(&fmt_mid.video, p_filter->fmt_out.video.orientation);
    i_ret = FUNC0( p_filter, &fmt_mid );
    FUNC2( &fmt_mid );
    if( i_ret == VLC_SUCCESS )
        return VLC_SUCCESS;

    /* Lets try resize+chroma first, then transform */
    FUNC4( p_filter, "Trying to build chroma+resize" );
    FUNC1( &fmt_mid, &p_filter->fmt_out, &p_filter->fmt_in );
    i_ret = FUNC0( p_filter, &fmt_mid );
    FUNC2( &fmt_mid );
    return i_ret;
}