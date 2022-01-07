
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ i_stream_number_count; int pi_stream_numbers; } ;
struct TYPE_4__ {TYPE_2__ bitrate_mutual_exclusion; } ;
typedef TYPE_1__ asf_object_t ;
typedef TYPE_2__ asf_object_bitrate_mutual_exclusion_t ;


 int FREENULL (int ) ;

__attribute__((used)) static void ASF_FreeObject_bitrate_mutual_exclusion( asf_object_t *p_obj)
{
    asf_object_bitrate_mutual_exclusion_t *p_ex = &p_obj->bitrate_mutual_exclusion;

    FREENULL( p_ex->pi_stream_numbers );
    p_ex->i_stream_number_count = 0;
}
