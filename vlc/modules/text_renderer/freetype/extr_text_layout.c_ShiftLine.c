
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int yMin; int yMax; int xMin; int xMax; } ;
struct TYPE_5__ {int i_character_count; int i_base_line; TYPE_1__ bbox; int * p_character; } ;
typedef TYPE_2__ line_desc_t ;


 int ShiftChar (int *,int,int) ;

__attribute__((used)) static void ShiftLine( line_desc_t *p_line, int x, int y )
{
    for( int i=0; i<p_line->i_character_count; i++ )
        ShiftChar( &p_line->p_character[i], x, y );
    p_line->i_base_line += y;
    p_line->bbox.yMin += y;
    p_line->bbox.yMax += y;
    p_line->bbox.xMin += x;
    p_line->bbox.xMax += x;
}
