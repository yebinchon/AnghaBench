
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_ruby; int style; struct TYPE_4__* psz_text; } ;
typedef TYPE_1__ text_segment_t ;


 int free (TYPE_1__*) ;
 int text_segment_ruby_ChainDelete (int ) ;
 int text_style_Delete (int ) ;

void text_segment_Delete( text_segment_t* segment )
{
    if ( segment != ((void*)0) )
    {
        free( segment->psz_text );
        text_style_Delete( segment->style );
        text_segment_ruby_ChainDelete( segment->p_ruby );
        free( segment );
    }
}
