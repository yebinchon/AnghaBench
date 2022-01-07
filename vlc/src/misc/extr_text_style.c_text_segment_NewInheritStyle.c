
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int text_style_t ;
struct TYPE_5__ {int style; } ;
typedef TYPE_1__ text_segment_t ;


 int text_segment_Delete (TYPE_1__*) ;
 TYPE_1__* text_segment_New (int *) ;
 int text_style_Duplicate (int const*) ;
 scalar_t__ unlikely (int) ;

text_segment_t *text_segment_NewInheritStyle( const text_style_t* p_style )
{
    if ( !p_style )
        return ((void*)0);
    text_segment_t* p_segment = text_segment_New( ((void*)0) );
    if ( unlikely( !p_segment ) )
        return ((void*)0);
    p_segment->style = text_style_Duplicate( p_style );
    if ( unlikely( !p_segment->style ) )
    {
        text_segment_Delete( p_segment );
        return ((void*)0);
    }
    return p_segment;
}
