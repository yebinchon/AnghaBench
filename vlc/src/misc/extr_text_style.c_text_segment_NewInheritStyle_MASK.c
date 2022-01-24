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
typedef  int /*<<< orphan*/  text_style_t ;
struct TYPE_5__ {int /*<<< orphan*/  style; } ;
typedef  TYPE_1__ text_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int) ; 

text_segment_t *FUNC4( const text_style_t* p_style )
{
    if ( !p_style )
        return NULL; //FIXME: Allow this, even if it is an alias to text_segment_New( NULL ) ?
    text_segment_t* p_segment = FUNC1( NULL );
    if ( FUNC3( !p_segment ) )
        return NULL;
    p_segment->style = FUNC2( p_style );
    if ( FUNC3( !p_segment->style ) )
    {
        FUNC0( p_segment );
        return NULL;
    }
    return p_segment;
}