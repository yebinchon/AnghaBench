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
struct TYPE_5__ {struct TYPE_5__* p_next; int /*<<< orphan*/  p_ruby; int /*<<< orphan*/  style; int /*<<< orphan*/  psz_text; } ;
typedef  TYPE_1__ text_segment_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

text_segment_t *FUNC4( text_segment_t *p_src )
{
    text_segment_t *p_dst = NULL, *p_dst0 = NULL;

    while( p_src ) {
        text_segment_t *p_new = FUNC0( p_src->psz_text );

        if( FUNC3( !p_new ) )
            break;

        p_new->style = FUNC2( p_src->style );
        p_new->p_ruby = FUNC1( p_src->p_ruby );

        if( p_dst == NULL )
        {
            p_dst = p_dst0 = p_new;
        }
        else
        {
            p_dst->p_next = p_new;
            p_dst = p_dst->p_next;
        }

        p_src = p_src->p_next;
    }

    return p_dst0;
}