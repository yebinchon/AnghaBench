
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int scroll_direction; } ;
struct TYPE_10__ {int i_firstrow; int i_lastrow; TYPE_3__** rows; TYPE_1__ style; } ;
typedef TYPE_2__ cea708_window_t ;
struct TYPE_11__ {size_t lastcol; size_t firstcol; int * styles; int * characters; } ;
typedef TYPE_3__ cea708_text_row_t ;
typedef int cea708_pen_style_t ;






 int CEA708_WINDOW_MAX_ROWS ;
 int CEA708_Window_MaxCol (TYPE_2__*) ;
 int CEA708_Window_MinCol (TYPE_2__*) ;
 scalar_t__ CEA708_Window_RowCount (TYPE_2__*) ;
 int CEA708_Window_Truncate (TYPE_2__*,int const) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static void CEA708_Window_Scroll( cea708_window_t *p_w )
{
    if( CEA708_Window_RowCount( p_w ) == 0 )
        return;

    switch( p_w->style.scroll_direction )
    {
        case 130:

            if( CEA708_Window_MaxCol( p_w ) == CEA708_WINDOW_MAX_ROWS - 1 )
                CEA708_Window_Truncate( p_w, 130 );
            for( int i=p_w->i_firstrow; i <= p_w->i_lastrow; i++ )
            {
                cea708_text_row_t *row = p_w->rows[i];
                if( row->lastcol < row->firstcol )
                    continue;
                memmove( &row->characters[row->firstcol + 1], &row->characters[row->firstcol],
                         (row->lastcol - row->firstcol + 1) * 4U );
                memmove( &row->styles[row->firstcol + 1], &row->styles[row->firstcol],
                         (row->lastcol - row->firstcol + 1) * sizeof(cea708_pen_style_t) );
                row->firstcol++;
                row->lastcol++;
            }
            break;
        case 129:

            if( CEA708_Window_MinCol( p_w ) == 0 )
                CEA708_Window_Truncate( p_w, 129 );
            for( int i=p_w->i_firstrow; i <= p_w->i_lastrow; i++ )
            {
                cea708_text_row_t *row = p_w->rows[i];
                if( row->lastcol < row->firstcol )
                    continue;
                memmove( &row->characters[row->firstcol - 1], &row->characters[row->firstcol],
                         (row->lastcol - row->firstcol + 1) * 4U );
                memmove( &row->styles[row->firstcol - 1], &row->styles[row->firstcol],
                         (row->lastcol - row->firstcol + 1) * sizeof(cea708_pen_style_t) );
                row->firstcol--;
                row->lastcol--;
            }
            break;
        case 128:

            if( p_w->i_lastrow == CEA708_WINDOW_MAX_ROWS - 1 )
                CEA708_Window_Truncate( p_w, 128 );
            for( int i=p_w->i_lastrow; i >= p_w->i_firstrow; i-- )
                p_w->rows[i+1] = p_w->rows[i];
            p_w->rows[p_w->i_firstrow] = ((void*)0);
            p_w->i_firstrow++;
            p_w->i_lastrow++;
            break;
        case 131:

            if( p_w->i_firstrow == 0 )
                CEA708_Window_Truncate( p_w, 131 );
            for( int i=p_w->i_firstrow; i <= p_w->i_lastrow; i++ )
                p_w->rows[i-1] = p_w->rows[i];
            p_w->rows[p_w->i_lastrow] = ((void*)0);
            p_w->i_firstrow--;
            p_w->i_lastrow--;
            break;
    }
}
