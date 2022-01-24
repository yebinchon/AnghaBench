#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__* psz_text; TYPE_2__* p_ruby; } ;
typedef  TYPE_1__ text_segment_t ;
struct TYPE_7__ {int /*<<< orphan*/  psz_base; struct TYPE_7__* p_next; } ;
typedef  TYPE_2__ text_segment_ruby_t ;

/* Variables and functions */
 scalar_t__* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

text_segment_t *FUNC4( text_segment_ruby_t *p_ruby )
{
    text_segment_t *p_segment = FUNC3( NULL );
    if( p_segment )
    {
        p_segment->p_ruby = p_ruby;
        size_t i_base = 1;
        for( text_segment_ruby_t *p = p_ruby; p; p = p->p_next )
            i_base += FUNC2( p->psz_base );
        p_segment->psz_text = FUNC0( i_base );
        /* Fallback for those not understanding p_ruby */
        if( p_segment->psz_text )
        {
            *p_segment->psz_text = 0;
            for( text_segment_ruby_t *p = p_ruby; p; p = p->p_next )
                FUNC1( p_segment->psz_text, p->psz_base );
        }
    }
    return p_segment;
}