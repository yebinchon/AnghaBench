
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int asf_object_t ;
struct TYPE_3__ {size_t i_count; TYPE_2__* name; TYPE_2__* marker; } ;
typedef TYPE_1__ asf_object_marker_t ;
struct TYPE_4__ {struct TYPE_4__* p_marker_description; } ;


 int FREENULL (TYPE_2__*) ;

__attribute__((used)) static void ASF_FreeObject_marker( asf_object_t *p_obj)
{
    asf_object_marker_t *p_mk = (asf_object_marker_t *)p_obj;

    for( uint32_t i = 0; i < p_mk->i_count; i++ )
    {
        FREENULL( p_mk->marker[i].p_marker_description );
    }
    FREENULL( p_mk->marker );
    FREENULL( p_mk->name );
}
