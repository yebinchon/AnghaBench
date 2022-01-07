
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int font_style; } ;
typedef TYPE_1__ ttml_style_t ;


 int text_style_Duplicate (int ) ;
 TYPE_1__* ttml_style_New () ;

__attribute__((used)) static ttml_style_t * ttml_style_Duplicate( const ttml_style_t *p_src )
{
    ttml_style_t *p_dup = ttml_style_New( );
    if( p_dup )
    {
        *p_dup = *p_src;
        p_dup->font_style = text_style_Duplicate( p_src->font_style );
    }
    return p_dup;
}
