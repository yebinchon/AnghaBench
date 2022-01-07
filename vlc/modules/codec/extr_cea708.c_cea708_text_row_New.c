
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int firstcol; int characters; scalar_t__ lastcol; } ;
typedef TYPE_1__ cea708_text_row_t ;


 int CEA708_WINDOW_MAX_COLS ;
 TYPE_1__* malloc (int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static cea708_text_row_t * cea708_text_row_New( void )
{
    cea708_text_row_t *p_row = malloc( sizeof(*p_row) );
    if( p_row )
    {
        p_row->firstcol = CEA708_WINDOW_MAX_COLS;
        p_row->lastcol = 0;
        memset(p_row->characters, 0, 4 * CEA708_WINDOW_MAX_COLS);
    }
    return p_row;
}
