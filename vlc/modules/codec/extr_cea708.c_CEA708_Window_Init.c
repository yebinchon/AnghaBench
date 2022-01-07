
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_row_lock; int b_column_lock; int i_firstrow; int pen; int style; } ;
typedef TYPE_1__ cea708_window_t ;


 int CEA708_WINDOW_MAX_ROWS ;
 int * cea708_default_pen_styles ;
 int * cea708_default_window_styles ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void CEA708_Window_Init( cea708_window_t *p_w )
{
    memset( p_w, 0, sizeof(*p_w) );
    p_w->style = cea708_default_window_styles[0];
    p_w->pen = cea708_default_pen_styles[0];
    p_w->i_firstrow = CEA708_WINDOW_MAX_ROWS;
    p_w->b_row_lock = 1;
    p_w->b_column_lock = 1;
}
