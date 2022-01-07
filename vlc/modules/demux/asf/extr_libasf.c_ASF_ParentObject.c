
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_last; TYPE_2__* p_first; TYPE_2__* p_next; } ;
struct TYPE_6__ {TYPE_1__ common; } ;
typedef TYPE_2__ asf_object_t ;



__attribute__((used)) static void ASF_ParentObject( asf_object_t *p_father, asf_object_t *p_obj )
{
    if( p_father )
    {
        if( p_father->common.p_first )
        {
            p_father->common.p_last->common.p_next = p_obj;
        }
        else
        {
            p_father->common.p_first = p_obj;
        }
        p_father->common.p_last = p_obj;
    }
}
