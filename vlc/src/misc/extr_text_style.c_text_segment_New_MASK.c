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
struct TYPE_4__ {int /*<<< orphan*/  psz_text; } ;
typedef  TYPE_1__ text_segment_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

text_segment_t *FUNC2( const char *psz_text )
{
    text_segment_t* segment = FUNC0( 1, sizeof(*segment) );
    if( !segment )
        return NULL;

    if ( psz_text )
        segment->psz_text = FUNC1( psz_text );

    return segment;
}