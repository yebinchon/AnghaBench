#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_fourcc_t ;
struct TYPE_17__ {scalar_t__ const i_codec; } ;
struct TYPE_13__ {scalar_t__ const i_codec; } ;
struct TYPE_14__ {TYPE_8__ fmt_in; TYPE_1__ fmt_out; } ;
typedef  TYPE_2__ filter_t ;
struct TYPE_16__ {scalar_t__ i_chroma; scalar_t__ i_bmask; scalar_t__ i_gmask; scalar_t__ i_rmask; } ;
struct TYPE_15__ {scalar_t__ i_codec; TYPE_4__ video; } ;
typedef  TYPE_3__ es_format_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,TYPE_3__*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_8__*) ; 
 scalar_t__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC6( filter_t *p_filter )
{
    es_format_t fmt_mid;
    int i_ret = VLC_EGENERIC;

    /* Now try chroma format list */
    const vlc_fourcc_t *pi_allowed_chromas = FUNC3( p_filter );
    for( int i = 0; pi_allowed_chromas[i]; i++ )
    {
        const vlc_fourcc_t i_chroma = pi_allowed_chromas[i];
        if( i_chroma == p_filter->fmt_in.i_codec ||
            i_chroma == p_filter->fmt_out.i_codec )
            continue;

        FUNC4( p_filter, "Trying to use chroma %4.4s as middle man",
                 (char*)&i_chroma );

        FUNC2( &fmt_mid, &p_filter->fmt_in );
        fmt_mid.i_codec        =
        fmt_mid.video.i_chroma = i_chroma;
        fmt_mid.video.i_rmask  = 0;
        fmt_mid.video.i_gmask  = 0;
        fmt_mid.video.i_bmask  = 0;
        FUNC5(&fmt_mid.video);

        i_ret = FUNC0( p_filter, &fmt_mid );
        FUNC1( &fmt_mid );

        if( i_ret == VLC_SUCCESS )
            break;
    }

    return i_ret;
}