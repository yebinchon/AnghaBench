
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int i_firstrow; int i_lastrow; TYPE_2__** rows; } ;
typedef TYPE_1__ cea708_window_t ;
struct TYPE_9__ {int lastcol; int firstcol; } ;
typedef TYPE_2__ cea708_text_row_t ;






 int CEA708_Window_MaxCol (TYPE_1__*) ;
 int CEA708_Window_MinCol (TYPE_1__*) ;
 int CEA708_Window_RowCount (TYPE_1__*) ;
 int cea708_text_row_Delete (TYPE_2__*) ;

__attribute__((used)) static void CEA708_Window_Truncate( cea708_window_t *p_w, int i_direction )
{
    switch( i_direction )
    {
        case 130:
        {
            uint8_t i_max = CEA708_Window_MaxCol( p_w );
            for( int i=p_w->i_firstrow; i <= p_w->i_lastrow; i++ )
            {
                cea708_text_row_t *row = p_w->rows[i];
                if( row->lastcol == i_max )
                {
                    if( row->firstcol >= row->lastcol )
                    {
                        cea708_text_row_Delete( row );
                        p_w->rows[i] = ((void*)0);
                        if( i == p_w->i_firstrow )
                            p_w->i_firstrow++;
                        else if( i == p_w->i_lastrow )
                            p_w->i_lastrow--;
                    }
                }
            }
        }
            break;
        case 129:
        {
            uint8_t i_min = CEA708_Window_MinCol( p_w );
            for( int i=p_w->i_firstrow; i <= p_w->i_lastrow; i++ )
            {
                cea708_text_row_t *row = p_w->rows[i];
                if( row->firstcol == i_min )
                {
                    if( row->firstcol >= row->lastcol )
                    {
                        cea708_text_row_Delete( row );
                        p_w->rows[i] = ((void*)0);
                        if( i == p_w->i_firstrow )
                            p_w->i_firstrow++;
                        else if( i == p_w->i_lastrow )
                            p_w->i_lastrow--;
                    }
                }
            }
        }
            break;
        case 128:
            if( CEA708_Window_RowCount( p_w ) > 0 )
            {
                cea708_text_row_Delete( p_w->rows[p_w->i_lastrow] );
                p_w->rows[p_w->i_lastrow--] = ((void*)0);
            }
            break;
        case 131:
            if( CEA708_Window_RowCount( p_w ) > 0 )
            {
                cea708_text_row_Delete( p_w->rows[p_w->i_firstrow] );
                p_w->rows[p_w->i_firstrow++] = ((void*)0);
            }
            break;
    }
}
