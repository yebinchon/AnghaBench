#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int i_firstrow; int i_lastrow; TYPE_2__** rows; } ;
typedef  TYPE_1__ cea708_window_t ;
struct TYPE_9__ {int /*<<< orphan*/  lastcol; int /*<<< orphan*/  firstcol; } ;
typedef  TYPE_2__ cea708_text_row_t ;

/* Variables and functions */
#define  CEA708_WA_DIRECTION_BT 131 
#define  CEA708_WA_DIRECTION_LTR 130 
#define  CEA708_WA_DIRECTION_RTL 129 
#define  CEA708_WA_DIRECTION_TB 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4( cea708_window_t *p_w, int i_direction )
{
    switch( i_direction )
    {
        case CEA708_WA_DIRECTION_LTR: /* Deletes all most right col */
        {
            uint8_t i_max = FUNC0( p_w );
            for( int i=p_w->i_firstrow; i <= p_w->i_lastrow; i++ )
            {
                cea708_text_row_t *row = p_w->rows[i];
                if( row->lastcol == i_max )
                {
                    if( row->firstcol >= row->lastcol )
                    {
                        FUNC3( row );
                        p_w->rows[i] = NULL;
                        if( i == p_w->i_firstrow )
                            p_w->i_firstrow++;
                        else if( i == p_w->i_lastrow )
                            p_w->i_lastrow--;
                    }
                }
            }
        }
            break;
        case CEA708_WA_DIRECTION_RTL: /* Deletes all most left col */
        {
            uint8_t i_min = FUNC1( p_w );
            for( int i=p_w->i_firstrow; i <= p_w->i_lastrow; i++ )
            {
                cea708_text_row_t *row = p_w->rows[i];
                if( row->firstcol == i_min )
                {
                    if( row->firstcol >= row->lastcol )
                    {
                        FUNC3( row );
                        p_w->rows[i] = NULL;
                        if( i == p_w->i_firstrow )
                            p_w->i_firstrow++;
                        else if( i == p_w->i_lastrow )
                            p_w->i_lastrow--;
                    }
                }
            }
        }
            break;
        case CEA708_WA_DIRECTION_TB: /* Deletes LAST row */
            if( FUNC2( p_w ) > 0 )
            {
                FUNC3( p_w->rows[p_w->i_lastrow] );
                p_w->rows[p_w->i_lastrow--] = NULL;
            }
            break;
        case CEA708_WA_DIRECTION_BT: /* Deletes First row */
            if( FUNC2( p_w ) > 0 )
            {
                FUNC3( p_w->rows[p_w->i_firstrow] );
                p_w->rows[p_w->i_firstrow++] = NULL;
            }
            break;
    }
}