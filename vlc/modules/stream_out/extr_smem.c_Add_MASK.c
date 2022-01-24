#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sout_stream_t ;
typedef  void sout_stream_id_sys_t ;
struct TYPE_5__ {scalar_t__ i_cat; } ;
typedef  TYPE_1__ es_format_t ;

/* Variables and functions */
 scalar_t__ AUDIO_ES ; 
 void* FUNC0 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 scalar_t__ VIDEO_ES ; 

__attribute__((used)) static void *FUNC2( sout_stream_t *p_stream, const es_format_t *p_fmt )
{
    sout_stream_id_sys_t *id = NULL;

    if ( p_fmt->i_cat == VIDEO_ES )
        id = FUNC1( p_stream, p_fmt );
    else if ( p_fmt->i_cat == AUDIO_ES )
        id = FUNC0( p_stream, p_fmt );
    return id;
}