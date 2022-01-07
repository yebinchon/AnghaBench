
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_6__ {size_t row; unsigned int col; size_t i_firstrow; size_t i_lastrow; int pen; TYPE_2__** rows; int b_defined; } ;
typedef TYPE_1__ cea708_window_t ;
struct TYPE_7__ {size_t firstcol; size_t lastcol; int * styles; int * characters; } ;
typedef TYPE_2__ cea708_text_row_t ;


 unsigned int CEA708_WINDOW_MAX_COLS ;
 size_t CEA708_WINDOW_MAX_ROWS ;
 int CEA708_Window_Forward (TYPE_1__*) ;
 int Debug (int ) ;
 int assert (int) ;
 TYPE_2__* cea708_text_row_New () ;
 int memcpy (int *,char const*,int) ;
 int printf (char*,char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void CEA708_Window_Write( const uint8_t c[4], cea708_window_t *p_w )
{
    if( !p_w->b_defined )
        return;


    if( unlikely( p_w->row >= CEA708_WINDOW_MAX_ROWS ||
                  p_w->col >= CEA708_WINDOW_MAX_COLS ) )
    {
        assert( p_w->row < CEA708_WINDOW_MAX_ROWS );
        assert( p_w->col < CEA708_WINDOW_MAX_COLS );
        return;
    }

    cea708_text_row_t *p_row = p_w->rows[p_w->row];
    if( !p_row )
    {
        p_w->rows[p_w->row] = p_row = cea708_text_row_New();
        if( !p_row )
            return;
        if( p_w->row < p_w->i_firstrow )
            p_w->i_firstrow = p_w->row;
        if( p_w->row > p_w->i_lastrow )
            p_w->i_lastrow = p_w->row;
    }

    memcpy( &p_row->characters[p_w->col * 4U], c, 4 );
    p_row->styles[p_w->col] = p_w->pen;
    if( p_w->col < p_row->firstcol )
        p_row->firstcol = p_w->col;
    if( p_w->col > p_row->lastcol )
        p_row->lastcol = p_w->col;

    CEA708_Window_Forward( p_w );

    Debug(printf("\033[0;33m%s\033[0m", c));
}
