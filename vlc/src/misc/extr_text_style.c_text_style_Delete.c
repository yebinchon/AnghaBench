
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* psz_monofontname; struct TYPE_4__* psz_fontname; } ;
typedef TYPE_1__ text_style_t ;


 int free (TYPE_1__*) ;

void text_style_Delete( text_style_t *p_style )
{
    if( p_style )
        free( p_style->psz_fontname );
    if( p_style )
        free( p_style->psz_monofontname );
    free( p_style );
}
