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
struct TYPE_4__ {struct TYPE_4__* psz_rt; struct TYPE_4__* psz_base; struct TYPE_4__* p_next; } ;
typedef  TYPE_1__ text_segment_ruby_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1( text_segment_ruby_t *p_ruby )
{
    while( p_ruby )
    {
        text_segment_ruby_t *p_next = p_ruby->p_next;
        FUNC0( p_ruby->psz_base );
        FUNC0( p_ruby->psz_rt );
        FUNC0( p_ruby );
        p_ruby = p_next;
    }
}