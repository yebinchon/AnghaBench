#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  webvtt_dom_node_t ;
typedef  int /*<<< orphan*/  text_style_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3( webvtt_dom_node_t *p_node, text_style_t *p_style )
{
    text_style_t **pp_style = FUNC1( p_node );
    if( !pp_style )
    {
        FUNC0( pp_style );
        if( p_style )
            FUNC2( p_style );
        return;
    }
    if( *pp_style )
        FUNC2( *pp_style );
    *pp_style = p_style;
}