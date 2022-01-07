
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int text_style_t ;
struct TYPE_5__ {struct TYPE_5__* p_next; int * style; } ;
typedef TYPE_1__ text_segment_t ;
typedef int style_stack_t ;


 int * DuplicateAndPushStyle (int **) ;
 TYPE_1__* text_segment_New (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static text_segment_t* NewTextSegmentPushStyle( text_segment_t* p_segment, style_stack_t** pp_stack )
{
    text_segment_t* p_new = text_segment_New( ((void*)0) );
    if ( unlikely( p_new == ((void*)0) ) )
        return ((void*)0);
    text_style_t* p_style = DuplicateAndPushStyle( pp_stack );
    p_new->style = p_style;
    p_segment->p_next = p_new;
    return p_new;
}
