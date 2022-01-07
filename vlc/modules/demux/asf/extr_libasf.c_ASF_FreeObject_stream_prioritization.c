
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pi_priority_flag; int pi_priority_stream_number; } ;
struct TYPE_4__ {TYPE_2__ stream_prioritization; } ;
typedef TYPE_1__ asf_object_t ;
typedef TYPE_2__ asf_object_stream_prioritization_t ;


 int FREENULL (int ) ;

__attribute__((used)) static void ASF_FreeObject_stream_prioritization( asf_object_t *p_obj)
{
    asf_object_stream_prioritization_t *p_sp = &p_obj->stream_prioritization;

    FREENULL( p_sp->pi_priority_stream_number );
    FREENULL( p_sp->pi_priority_flag );
}
