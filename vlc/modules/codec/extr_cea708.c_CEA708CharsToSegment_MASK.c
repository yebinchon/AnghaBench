#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct TYPE_7__ {scalar_t__* psz_text; scalar_t__ style; } ;
typedef  TYPE_1__ text_segment_t ;
struct TYPE_8__ {scalar_t__* characters; int /*<<< orphan*/ * styles; } ;
typedef  TYPE_2__ cea708_text_row_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  STYLE_NO_DEFAULTS ; 
 scalar_t__* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static text_segment_t * FUNC5( const cea708_text_row_t *p_row,
                                              uint8_t i_start, uint8_t i_end,
                                              bool b_newline )
{
    text_segment_t *p_segment = FUNC3( NULL );
    if( !p_segment )
        return NULL;

    p_segment->style = FUNC4( STYLE_NO_DEFAULTS );
    if( p_segment->style )
        FUNC0( &p_row->styles[i_start], p_segment->style );

    p_segment->psz_text = FUNC1( 1U + !!b_newline + (i_end - i_start + 1) * 4U );
    if( !p_segment->psz_text )
    {
        FUNC2( p_segment );
        return NULL;
    }

    size_t offsetw = 0;
    for( uint8_t i=i_start; i<=i_end; i++ )
    {
        for( size_t j=0; j<4; j++ )
        {
            if( p_row->characters[i * 4 + j] != 0 )
                p_segment->psz_text[offsetw++] = p_row->characters[i * 4 + j];
            else if( j == 0 )
                p_segment->psz_text[offsetw++] = ' ';
            else
                break;
        }
    }

    if( b_newline )
        p_segment->psz_text[offsetw++] = '\n';
    p_segment->psz_text[offsetw] = '\0';

    return p_segment;
}