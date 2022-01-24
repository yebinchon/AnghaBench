#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_11__ {size_t i_extra; int /*<<< orphan*/  p_extra; } ;
typedef  TYPE_1__ es_format_t ;
struct TYPE_12__ {int /*<<< orphan*/  out; TYPE_3__* p_sys; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_demux; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_13__ {int /*<<< orphan*/ * es; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  Demux ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  SPU_ES ; 
 int /*<<< orphan*/  VLC_CODEC_WEBVTT ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 TYPE_3__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8 ( vlc_object_t *p_this )
{
    demux_t        *p_demux = (demux_t*)p_this;
    demux_sys_t    *p_sys;

    int i_ret = FUNC1( p_demux );
    if( i_ret != VLC_SUCCESS )
        return i_ret;

    p_demux->pf_demux = Demux;
    p_demux->pf_control = Control;

    p_demux->p_sys = p_sys = FUNC3( 1, sizeof( demux_sys_t ) );
    if( p_sys == NULL )
        return VLC_ENOMEM;

    if( FUNC2( p_demux ) != VLC_SUCCESS )
    {
        FUNC7( p_this );
        return VLC_EGENERIC;
    }

    es_format_t fmt;
    FUNC5( &fmt, SPU_ES, VLC_CODEC_WEBVTT );
    size_t i_extra = 0;
    FUNC0( p_sys, &fmt.p_extra, &i_extra );
    fmt.i_extra = i_extra;
    p_sys->es = FUNC6( p_demux->out, &fmt );
    FUNC4( &fmt );
    if( p_sys->es == NULL )
    {
        FUNC7( p_this );
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}