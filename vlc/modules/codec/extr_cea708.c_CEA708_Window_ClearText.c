
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {size_t i_firstrow; size_t i_lastrow; int ** rows; } ;
typedef TYPE_1__ cea708_window_t ;


 size_t CEA708_WINDOW_MAX_ROWS ;
 int cea708_text_row_Delete (int *) ;

__attribute__((used)) static void CEA708_Window_ClearText( cea708_window_t *p_w )
{
    for( uint8_t i=p_w->i_firstrow; i<=p_w->i_lastrow; i++ )
    {
        cea708_text_row_Delete( p_w->rows[i] );
        p_w->rows[i] = ((void*)0);
    }
    p_w->i_lastrow = 0;
    p_w->i_firstrow = CEA708_WINDOW_MAX_ROWS;
}
