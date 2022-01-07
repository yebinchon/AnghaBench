
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int hevc_video_parameter_set_t ;
typedef int hevc_sequence_parameter_set_t ;
typedef int hevc_picture_parameter_set_t ;
struct TYPE_3__ {int rg_pps; int rg_sps; int rg_vps; } ;
typedef TYPE_1__ decoder_sys_t ;


 int APPENDIF (int ,int const*,int ,int) ;
 int HEVC_PPS_ID_MAX ;
 int HEVC_SPS_ID_MAX ;
 int HEVC_VPS_ID_MAX ;
 size_t INT_MAX ;
 int free (int *) ;

__attribute__((used)) static void SetsToAnnexB(decoder_sys_t *p_sys,
                         const hevc_picture_parameter_set_t *p_pps,
                         const hevc_sequence_parameter_set_t *p_sps,
                         const hevc_video_parameter_set_t *p_vps,
                         uint8_t **pp_out, int *pi_out)
{
    uint8_t *p_data = ((void*)0);
    size_t i_data = 0;

    APPENDIF(HEVC_VPS_ID_MAX, p_vps, p_sys->rg_vps, 1);
    APPENDIF(HEVC_VPS_ID_MAX, p_vps, p_sys->rg_vps, 0);
    APPENDIF(HEVC_SPS_ID_MAX, p_sps, p_sys->rg_sps, 1);
    APPENDIF(HEVC_SPS_ID_MAX, p_sps, p_sys->rg_sps, 0);
    APPENDIF(HEVC_PPS_ID_MAX, p_pps, p_sys->rg_pps, 1);
    APPENDIF(HEVC_PPS_ID_MAX, p_pps, p_sys->rg_pps, 0);


    if(i_data <= INT_MAX)
    {
        *pp_out = p_data;
        *pi_out = i_data;
    }
    else free(p_data);
}
