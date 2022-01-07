
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_7__ {TYPE_2__* p_next; } ;
struct TYPE_8__ {TYPE_1__ common; } ;
typedef TYPE_2__ asf_object_t ;
struct TYPE_9__ {TYPE_2__* p_first; } ;
typedef TYPE_3__ asf_object_root_t ;


 int ASF_FreeObject (int *,TYPE_2__*) ;
 int free (TYPE_3__*) ;

void ASF_FreeObjectRoot( stream_t *s, asf_object_root_t *p_root )
{
    asf_object_t *p_obj;

    p_obj = p_root->p_first;
    while( p_obj )
    {
        asf_object_t *p_next;
        p_next = p_obj->common.p_next;
        ASF_FreeObject( s, p_obj );
        p_obj = p_next;
    }
    free( p_root );
}
