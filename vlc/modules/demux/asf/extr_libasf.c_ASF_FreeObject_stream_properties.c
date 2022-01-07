
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int p_error_correction_data; int p_type_specific_data; } ;
struct TYPE_4__ {TYPE_2__ stream_properties; } ;
typedef TYPE_1__ asf_object_t ;
typedef TYPE_2__ asf_object_stream_properties_t ;


 int FREENULL (int ) ;

__attribute__((used)) static void ASF_FreeObject_stream_properties( asf_object_t *p_obj )
{
    asf_object_stream_properties_t *p_sp = &p_obj->stream_properties;

    FREENULL( p_sp->p_type_specific_data );
    FREENULL( p_sp->p_error_correction_data );
}
