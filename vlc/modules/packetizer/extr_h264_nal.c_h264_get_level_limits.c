
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_5__ {scalar_t__ i_level; int i_constraint_set_flags; } ;
typedef TYPE_1__ h264_sequence_parameter_set_t ;
typedef int h264_level_limits_t ;
struct TYPE_6__ {scalar_t__ i_level; int const limits; } ;


 size_t ARRAY_SIZE (TYPE_2__*) ;
 int H264_CONSTRAINT_SET_FLAG (int) ;
 scalar_t__ H264_LEVEL_NUMBER_1_1 ;
 scalar_t__ H264_LEVEL_NUMBER_1_B ;
 TYPE_2__* h264_levels_limits ;

__attribute__((used)) static const h264_level_limits_t * h264_get_level_limits( const h264_sequence_parameter_set_t *p_sps )
{
    uint16_t i_level_number = p_sps->i_level;
    if( i_level_number == H264_LEVEL_NUMBER_1_1 &&
       (p_sps->i_constraint_set_flags & H264_CONSTRAINT_SET_FLAG(3)) )
    {
        i_level_number = H264_LEVEL_NUMBER_1_B;
    }

    for( size_t i=0; i< ARRAY_SIZE(h264_levels_limits); i++ )
        if( h264_levels_limits[i].i_level == i_level_number )
            return & h264_levels_limits[i].limits;

    return ((void*)0);
}
