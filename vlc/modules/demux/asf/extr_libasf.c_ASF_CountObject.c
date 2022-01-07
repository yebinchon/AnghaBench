
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_guid_t ;
struct TYPE_3__ {TYPE_2__* p_next; int i_object_id; TYPE_2__* p_first; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
typedef TYPE_2__ asf_object_t ;


 scalar_t__ guidcmp (int *,int const*) ;

int ASF_CountObject( void *_p_obj, const vlc_guid_t *p_guid )
{
    int i_count;
    asf_object_t *p_child, *p_obj;

    p_obj = (asf_object_t *)_p_obj;
    if( !p_obj )
        return 0;

    i_count = 0;
    p_child = p_obj->common.p_first;
    while( p_child )
    {
        if( guidcmp( &p_child->common.i_object_id, p_guid ) )
            i_count++;

        p_child = p_child->common.p_next;
    }
    return i_count;
}
