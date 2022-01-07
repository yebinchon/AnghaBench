
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_character_count; struct TYPE_5__* p_character; scalar_t__ p_shadow; scalar_t__ p_outline; scalar_t__ p_glyph; } ;
typedef TYPE_1__ line_desc_t ;
typedef TYPE_1__ line_character_t ;
typedef int FT_Glyph ;


 int FT_Done_Glyph (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void FreeLine( line_desc_t *p_line )
{
    for( int i = 0; i < p_line->i_character_count; i++ )
    {
        line_character_t *ch = &p_line->p_character[i];
        FT_Done_Glyph( (FT_Glyph)ch->p_glyph );
        if( ch->p_outline )
            FT_Done_Glyph( (FT_Glyph)ch->p_outline );
        if( ch->p_shadow )
            FT_Done_Glyph( (FT_Glyph)ch->p_shadow );
    }




    free( p_line->p_character );
    free( p_line );
}
