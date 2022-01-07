
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {void* i_redundant_pic_present_flag; void* weighted_bipred_idc; void* weighted_pred_flag; void* i_pic_order_present_flag; scalar_t__ i_sps_id; scalar_t__ i_id; } ;
typedef TYPE_1__ h264_picture_parameter_set_t ;
typedef int bs_t ;


 scalar_t__ H264_PPS_ID_MAX ;
 scalar_t__ H264_SPS_ID_MAX ;
 void* bs_read (int *,int) ;
 int bs_read1 (int *) ;
 int bs_read_se (int *) ;
 int bs_read_ue (int *) ;
 int bs_skip (int *,unsigned int) ;

__attribute__((used)) static bool h264_parse_picture_parameter_set_rbsp( bs_t *p_bs,
                                                   h264_picture_parameter_set_t *p_pps )
{
    uint32_t i_pps_id = bs_read_ue( p_bs );
    uint32_t i_sps_id = bs_read_ue( p_bs );
    if( i_pps_id > H264_PPS_ID_MAX || i_sps_id > H264_SPS_ID_MAX )
        return 0;
    p_pps->i_id = i_pps_id;
    p_pps->i_sps_id = i_sps_id;

    bs_skip( p_bs, 1 );
    p_pps->i_pic_order_present_flag = bs_read( p_bs, 1 );

    unsigned num_slice_groups = bs_read_ue( p_bs ) + 1;
    if( num_slice_groups > 8 )
        return 0;
    if( num_slice_groups > 1 )
    {
        unsigned slice_group_map_type = bs_read_ue( p_bs );
        if( slice_group_map_type == 0 )
        {
            for( unsigned i = 0; i < num_slice_groups; i++ )
                bs_read_ue( p_bs );
        }
        else if( slice_group_map_type == 2 )
        {
            for( unsigned i = 0; i < num_slice_groups; i++ )
            {
                bs_read_ue( p_bs );
                bs_read_ue( p_bs );
            }
        }
        else if( slice_group_map_type > 2 && slice_group_map_type < 6 )
        {
            bs_read1( p_bs );
            bs_read_ue( p_bs );
        }
        else if( slice_group_map_type == 6 )
        {
            unsigned pic_size_in_maps_units = bs_read_ue( p_bs ) + 1;
            unsigned sliceGroupSize = 1;
            while(num_slice_groups > 1)
            {
                sliceGroupSize++;
                num_slice_groups = ((num_slice_groups - 1) >> 1) + 1;
            }
            for( unsigned i = 0; i < pic_size_in_maps_units; i++ )
            {
                bs_skip( p_bs, sliceGroupSize );
            }
        }
    }

    bs_read_ue( p_bs );
    bs_read_ue( p_bs );
    p_pps->weighted_pred_flag = bs_read( p_bs, 1 );
    p_pps->weighted_bipred_idc = bs_read( p_bs, 2 );
    bs_read_se( p_bs );
    bs_read_se( p_bs );
    bs_read_se( p_bs );
    bs_read( p_bs, 1 );
    bs_read( p_bs, 1 );
    p_pps->i_redundant_pic_present_flag = bs_read( p_bs, 1 );



    return 1;
}
