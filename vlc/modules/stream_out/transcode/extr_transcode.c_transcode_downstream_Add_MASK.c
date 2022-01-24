#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  p_next; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ sout_stream_t ;
struct TYPE_13__ {void* psz_lang; } ;
struct TYPE_15__ {TYPE_1__ aenc_cfg; } ;
typedef  TYPE_3__ sout_stream_sys_t ;
struct TYPE_16__ {scalar_t__ i_id; scalar_t__ i_group; void* psz_language; int /*<<< orphan*/  i_codec; int /*<<< orphan*/  i_cat; } ;
typedef  TYPE_4__ es_format_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 void* FUNC4 (void*) ; 

__attribute__((used)) static void *FUNC5( sout_stream_t *p_stream,
                                       const es_format_t *fmt_orig,
                                       const es_format_t *fmt)
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;

    es_format_t tmp;
    FUNC2( &tmp, fmt->i_cat, fmt->i_codec );
    FUNC1( &tmp, fmt );

    if( !fmt->psz_language )
    {
        if( p_sys->aenc_cfg.psz_lang )
            tmp.psz_language = FUNC4( p_sys->aenc_cfg.psz_lang );
        else if( fmt_orig->psz_language )
            tmp.psz_language = FUNC4( fmt_orig->psz_language );
    }

    if( tmp.i_id != fmt_orig->i_id )
        tmp.i_id = fmt_orig->i_id;
    if( tmp.i_group != fmt_orig->i_group )
        tmp.i_group = fmt_orig->i_group;

    void *downstream = FUNC3( p_stream->p_next, &tmp );
    FUNC0( &tmp );
    return downstream;
}