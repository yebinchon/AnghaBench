
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int font_style; } ;
typedef TYPE_1__ ttml_style_t ;


 int free (TYPE_1__*) ;
 int text_style_Delete (int ) ;

__attribute__((used)) static void ttml_style_Delete( ttml_style_t* p_ttml_style )
{
    text_style_Delete( p_ttml_style->font_style );
    free( p_ttml_style );
}
