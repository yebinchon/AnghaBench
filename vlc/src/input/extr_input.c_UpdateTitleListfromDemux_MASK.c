#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_4__ {TYPE_2__* master; } ;
typedef  TYPE_1__ input_thread_private_t ;
struct TYPE_5__ {scalar_t__ i_title; int b_title_demux; int /*<<< orphan*/  title; int /*<<< orphan*/  i_seekpoint_offset; int /*<<< orphan*/  i_title_offset; int /*<<< orphan*/  p_demux; } ;
typedef  TYPE_2__ input_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEMUX_GET_TITLE_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4( input_thread_t *p_input )
{
    input_thread_private_t *priv = FUNC3(p_input);
    input_source_t *in = priv->master;

    /* Delete the preexisting titles */
    bool had_titles = in->i_title > 0;

    /* Get the new title list */
    if( FUNC2( in->p_demux, DEMUX_GET_TITLE_INFO,
                       &in->title, &in->i_title,
                       &in->i_title_offset, &in->i_seekpoint_offset ) )
        FUNC1( in->i_title, in->title );
    else
        in->b_title_demux = true;

    FUNC0( p_input, had_titles );
}