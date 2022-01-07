
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int text_style_t ;
struct TYPE_8__ {struct TYPE_8__* p_next; int * style; } ;
typedef TYPE_1__ text_segment_t ;
struct TYPE_9__ {int p_style; } ;
typedef TYPE_2__ style_stack_t ;


 int PopStyle (TYPE_2__**) ;
 int STYLE_NO_DEFAULTS ;
 TYPE_1__* text_segment_New (int *) ;
 int * text_style_Create (int ) ;
 int * text_style_Duplicate (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static text_segment_t* NewTextSegmentPopStyle( text_segment_t* p_segment, style_stack_t** pp_stack )
{
    text_segment_t* p_new = text_segment_New( ((void*)0) );
    if ( unlikely( p_new == ((void*)0) ) )
        return ((void*)0);


    PopStyle( pp_stack );
    text_style_t* p_dup = ( *pp_stack ) ? text_style_Duplicate( (*pp_stack)->p_style ) : text_style_Create( STYLE_NO_DEFAULTS );
    p_new->style = p_dup;
    p_segment->p_next = p_new;
    return p_new;
}
