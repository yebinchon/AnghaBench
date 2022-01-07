
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bbox; TYPE_2__* p_character; } ;
typedef TYPE_1__ line_desc_t ;
struct TYPE_6__ {int bbox; } ;
typedef TYPE_2__ line_character_t ;


 int BBoxEnlarge (int *,int *) ;
 int ShiftChar (TYPE_2__*,int,int) ;

__attribute__((used)) static void IndentCharsFrom( line_desc_t *p_line, int i_start, int i_count, int w, int h )
{
    for( int i=0; i<i_count; i++ )
    {
        line_character_t *p_ch = &p_line->p_character[i_start + i];
        ShiftChar( p_ch, w, h );
        BBoxEnlarge( &p_line->bbox, &p_ch->bbox );
    }
}
