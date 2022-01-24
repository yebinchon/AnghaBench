#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  p_next; scalar_t__ p_sys; } ;
typedef  TYPE_1__ sout_stream_t ;
struct TYPE_9__ {scalar_t__ i_id; char* psz_language; } ;
typedef  TYPE_2__ sout_stream_sys_t ;
struct TYPE_10__ {scalar_t__ i_id; char* psz_language; } ;
typedef  TYPE_3__ es_format_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char*,scalar_t__,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,TYPE_3__ const*) ; 

__attribute__((used)) static void *FUNC2( sout_stream_t *p_stream, const es_format_t *p_fmt )
{
    sout_stream_sys_t *p_sys = (sout_stream_sys_t *)p_stream->p_sys;
    es_format_t fmt;

    if ( p_fmt->i_id == p_sys->i_id )
    {
        FUNC0( p_stream, "turning language %s of ID %d to %s",
                 p_fmt->psz_language ? p_fmt->psz_language : "unk",
                 p_sys->i_id, p_sys->psz_language );

        fmt = *p_fmt;
        fmt.psz_language = p_sys->psz_language;
        p_fmt = &fmt;
    }

    return FUNC1( p_stream->p_next, p_fmt );
}