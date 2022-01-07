
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_10__ {int i_size; TYPE_2__* s; struct TYPE_10__* p_next3g; } ;
typedef TYPE_1__ tx3g_segment_t ;
typedef int text_style_t ;
struct TYPE_11__ {scalar_t__ style; } ;


 int SegmentDoSplit (TYPE_1__*,int const,int const,TYPE_1__**,TYPE_1__**,TYPE_1__**) ;
 int free (TYPE_1__*) ;
 int text_segment_Delete (TYPE_2__*) ;
 scalar_t__ text_style_Duplicate (int const*) ;
 int text_style_Merge (scalar_t__,int const*,int) ;

__attribute__((used)) static bool SegmentSplit( tx3g_segment_t *p_prev, tx3g_segment_t **pp_segment,
                          const uint16_t i_start, const uint16_t i_end,
                          const text_style_t *p_styles )
{
    tx3g_segment_t *p_segment_left = ((void*)0), *p_segment_middle = ((void*)0), *p_segment_right = ((void*)0);

    if ( (*pp_segment)->i_size == 0 ) return 0;
    if ( i_start > i_end ) return 0;
    if ( (size_t)(i_end - i_start) > (*pp_segment)->i_size - 1 ) return 0;
    if ( i_end > (*pp_segment)->i_size - 1 ) return 0;

    SegmentDoSplit( *pp_segment, i_start, i_end, &p_segment_left, &p_segment_middle, &p_segment_right );
    if ( !p_segment_middle )
    {

        text_segment_Delete( p_segment_left->s );
        free( p_segment_left );
        text_segment_Delete( p_segment_right->s );
        free( p_segment_right );
        return 0;
    }

    tx3g_segment_t *p_next3g = (*pp_segment)->p_next3g;
    text_segment_Delete( (*pp_segment)->s );
    free( *pp_segment );
    *pp_segment = ( p_segment_left ) ? p_segment_left : p_segment_middle ;
    if ( p_prev ) p_prev->p_next3g = *pp_segment;

    if ( p_segment_right )
        p_segment_right->p_next3g = p_next3g;
    else
        p_segment_middle->p_next3g = p_next3g;

    if( p_segment_middle->s->style )
        text_style_Merge( p_segment_middle->s->style, p_styles, 1 );
    else
        p_segment_middle->s->style = text_style_Duplicate( p_styles );

    return 1;
}
