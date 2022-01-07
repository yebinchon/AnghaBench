
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int b_sps; int b_pps; } ;
typedef TYPE_1__ h264_probe_ctx_t ;


 int const H264_NAL_AU_DELIMITER ;
 int const H264_NAL_PPS ;
 int const H264_NAL_PREFIX ;
 int const H264_NAL_SEI ;
 int const H264_NAL_SLICE_IDR ;
 int const H264_NAL_SPS ;
 int const H264_NAL_SPS_EXT ;
 int const H264_NAL_SUBSET_SPS ;

__attribute__((used)) static int ProbeH264( const uint8_t *p_peek, size_t i_peek, void *p_priv )
{
    h264_probe_ctx_t *p_ctx = (h264_probe_ctx_t *) p_priv;

    if( i_peek < 1 )
        return -1;
    const uint8_t i_nal_type = p_peek[0] & 0x1F;
    const uint8_t i_ref_idc = p_peek[0] & 0x60;

    if( (p_peek[0] & 0x80) )
        return -1;




    if( i_nal_type == H264_NAL_SPS )
    {
        if( i_ref_idc == 0 || i_peek < 3 ||
           (p_peek[2] & 0x03) )
            return -1;
        p_ctx->b_sps = 1;
    }
    else if( i_nal_type == H264_NAL_PPS )
    {
        if( i_ref_idc == 0 )
            return -1;
        p_ctx->b_pps = 1;
    }
    else if( i_nal_type == H264_NAL_SLICE_IDR )
    {
        if( i_ref_idc == 0 || ! p_ctx->b_pps || ! p_ctx->b_sps )
            return -1;
        else
            return 1;
    }
    else if( i_nal_type == H264_NAL_AU_DELIMITER )
    {
        if( i_ref_idc || p_ctx->b_pps || p_ctx->b_sps )
            return -1;
    }
    else if ( i_nal_type == H264_NAL_SEI )
    {
        if( i_ref_idc )
            return -1;
    }

    else if ( i_nal_type == H264_NAL_SPS_EXT ||
              i_nal_type == H264_NAL_SUBSET_SPS )
    {
        if( i_ref_idc == 0 || !p_ctx->b_sps )
            return -1;
    }
    else if( i_nal_type == H264_NAL_PREFIX )
    {
        if( i_ref_idc == 0 || !p_ctx->b_pps || !p_ctx->b_sps )
            return -1;
    }
    else return -1;

    return 0;
}
