#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  input_item_node_t ;
struct TYPE_4__ {int /*<<< orphan*/  out; int /*<<< orphan*/  s; int /*<<< orphan*/  p_input_item; } ;
typedef  TYPE_1__ demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  ES_OUT_POST_SUBNODE ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5( demux_t *p_demux )
{
    input_item_node_t *p_node = FUNC1( p_demux->p_input_item );

    if( FUNC4( p_demux->s, p_node ) )
    {
        FUNC3( p_demux, "unable to read directory" );
        FUNC2( p_node );
        return VLC_EGENERIC;
    }

    if (FUNC0(p_demux->out, ES_OUT_POST_SUBNODE, p_node))
        FUNC2(p_node);

    return VLC_SUCCESS;
}