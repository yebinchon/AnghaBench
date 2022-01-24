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
struct TYPE_4__ {struct TYPE_4__* p_times; struct TYPE_4__* pi_pos; } ;
typedef  TYPE_1__ mp4_fragments_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1( mp4_fragments_index_t *p_index )
{
    if( p_index )
    {
        FUNC0( p_index->pi_pos );
        FUNC0( p_index->p_times );
        FUNC0( p_index );
    }
}