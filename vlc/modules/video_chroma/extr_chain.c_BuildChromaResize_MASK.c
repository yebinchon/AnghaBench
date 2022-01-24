#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  fmt_in; int /*<<< orphan*/  fmt_out; } ;
typedef  TYPE_1__ filter_t ;
typedef  int /*<<< orphan*/  es_format_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC5( filter_t *p_filter )
{
    es_format_t fmt_mid;
    int i_ret;

    /* Lets try resizing and then doing the chroma conversion */
    FUNC4( p_filter, "Trying to build resize+chroma" );
    FUNC2( &fmt_mid, &p_filter->fmt_in, &p_filter->fmt_out );
    i_ret = FUNC1( p_filter, &fmt_mid );
    FUNC3( &fmt_mid );

    if( i_ret == VLC_SUCCESS )
        return VLC_SUCCESS;

    /* Lets try it the other way arround (chroma and then resize) */
    FUNC4( p_filter, "Trying to build chroma+resize" );
    FUNC2( &fmt_mid, &p_filter->fmt_out, &p_filter->fmt_in );
    i_ret = FUNC0( p_filter, &fmt_mid );
    FUNC3( &fmt_mid );
    if( i_ret == VLC_SUCCESS )
        return VLC_SUCCESS;

    return VLC_EGENERIC;
}