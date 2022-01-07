
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int node; } ;
struct TYPE_7__ {TYPE_2__ element; TYPE_1__* content_window; } ;
struct TYPE_5__ {int * frame_element; } ;
typedef TYPE_3__ HTMLFrameBase ;


 int HTMLElement_destructor (int *) ;

void HTMLFrameBase_destructor(HTMLFrameBase *This)
{
    if(This->content_window)
        This->content_window->frame_element = ((void*)0);

    HTMLElement_destructor(&This->element.node);
}
