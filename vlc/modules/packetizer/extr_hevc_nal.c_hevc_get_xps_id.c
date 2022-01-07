
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int bs_t ;


 scalar_t__ HEVC_NAL_PPS ;
 scalar_t__ HEVC_NAL_SPS ;
 scalar_t__ HEVC_PPS_ID_MAX ;
 scalar_t__ HEVC_SPS_ID_MAX ;
 scalar_t__ HEVC_VPS_ID_MAX ;
 int bs_init (int *,scalar_t__ const*,size_t) ;
 scalar_t__ bs_read (int *,int) ;
 scalar_t__ bs_read_ue (int *) ;
 scalar_t__ hevc_getNALType (scalar_t__ const*) ;

bool hevc_get_xps_id(const uint8_t *p_buf, size_t i_buf, uint8_t *pi_id)
{
    if(i_buf < 3)
        return 0;

    uint8_t i_nal_type = hevc_getNALType(p_buf);
    bs_t bs;
    bs_init(&bs, &p_buf[2], i_buf - 2);
    if(i_nal_type == HEVC_NAL_PPS)
    {
        *pi_id = bs_read_ue( &bs );
        if(*pi_id > HEVC_PPS_ID_MAX)
            return 0;
    }
    else
    {
        *pi_id = bs_read( &bs, 4 );
        if(i_nal_type == HEVC_NAL_SPS)
        {
            if(*pi_id > HEVC_SPS_ID_MAX)
                return 0;
        }
        else if(*pi_id > HEVC_VPS_ID_MAX)
            return 0;
    }
    return 1;
}
