
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* p_father; struct TYPE_4__* p_last; struct TYPE_4__* p_next; struct TYPE_4__* p_first; } ;
typedef TYPE_1__ MP4_Box_t ;



__attribute__((used)) static void MP4_BoxAddChild( MP4_Box_t *p_parent, MP4_Box_t *p_childbox )
{
    if( !p_parent->p_first )
            p_parent->p_first = p_childbox;
    else
            p_parent->p_last->p_next = p_childbox;
    p_parent->p_last = p_childbox;
    p_childbox->p_father = p_parent;
}
