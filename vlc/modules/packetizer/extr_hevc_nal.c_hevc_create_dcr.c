
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct hevc_dcr_values {int i_numTemporalLayer; int i_chroma_idc; int i_bit_depth_luma_minus8; int i_bit_depth_chroma_minus8; int b_temporalIdNested; int general_configuration; } ;
struct hevc_dcr_params {scalar_t__ i_vps_count; scalar_t__ i_sps_count; scalar_t__ i_pps_count; scalar_t__ i_seipref_count; scalar_t__ i_seisuff_count; int * rgi_seisuff; int * p_seisuff; int * rgi_seipref; int * p_seipref; int * rgi_pps; int * p_pps; int * rgi_sps; int * p_sps; int * rgi_vps; int * p_vps; struct hevc_dcr_values* p_values; } ;
struct TYPE_4__ {int chroma_format_idc; int bit_depth_chroma_minus8; int bit_depth_luma_minus8; } ;
typedef TYPE_1__ hevc_sequence_parameter_set_t ;


 int HEVC_DCR_ADD_NALS (int ,scalar_t__,int *,int *) ;
 int HEVC_DCR_ADD_SIZES (scalar_t__,int *) ;
 int HEVC_NAL_PPS ;
 int HEVC_NAL_PREF_SEI ;
 int HEVC_NAL_SPS ;
 int HEVC_NAL_SUFF_SEI ;
 int HEVC_NAL_VPS ;
 int SetWBE (int*,int) ;
 int hevc_dcr_params_from_vps (int ,int ,struct hevc_dcr_values*) ;
 TYPE_1__* hevc_decode_sps (int ,int ,int) ;
 int hevc_rbsp_release_sps (TYPE_1__*) ;
 int* malloc (size_t) ;
 int memcpy (int*,int ,int) ;

uint8_t * hevc_create_dcr( const struct hevc_dcr_params *p_params,
                           uint8_t i_nal_length_size,
                           bool b_completeness, size_t *pi_size )
{
    *pi_size = 0;

    if( i_nal_length_size != 1 && i_nal_length_size != 2 && i_nal_length_size != 4 )
        return ((void*)0);

    struct hevc_dcr_values values =
    {
        .general_configuration = {0},
        .i_numTemporalLayer = 0,
        .i_chroma_idc = 1,
        .i_bit_depth_luma_minus8 = 0,
        .i_bit_depth_chroma_minus8 = 0,
        .b_temporalIdNested = 0,
    };

    if( p_params->p_values != ((void*)0) )
    {
        values = *p_params->p_values;
    }
    else
    {
        if( p_params->i_vps_count == 0 || p_params->i_sps_count == 0 )
           return ((void*)0);

        hevc_dcr_params_from_vps( p_params->p_vps[0], p_params->rgi_vps[0], &values );

        hevc_sequence_parameter_set_t *p_sps =
                hevc_decode_sps( p_params->p_sps[0], p_params->rgi_sps[0], 1 );
        if( p_sps )
        {
            values.i_chroma_idc = p_sps->chroma_format_idc;
            values.i_bit_depth_chroma_minus8 = p_sps->bit_depth_chroma_minus8;
            values.i_bit_depth_luma_minus8 = p_sps->bit_depth_luma_minus8;
            hevc_rbsp_release_sps( p_sps );
        }
    }

    size_t i_total_size = 1+12+2+4+2+2;
    HEVC_DCR_ADD_SIZES(p_params->i_vps_count, p_params->rgi_vps);
    HEVC_DCR_ADD_SIZES(p_params->i_sps_count, p_params->rgi_sps);
    HEVC_DCR_ADD_SIZES(p_params->i_pps_count, p_params->rgi_pps);
    HEVC_DCR_ADD_SIZES(p_params->i_seipref_count, p_params->rgi_seipref);
    HEVC_DCR_ADD_SIZES(p_params->i_seisuff_count, p_params->rgi_seisuff);

    uint8_t *p_data = malloc( i_total_size );
    if( p_data == ((void*)0) )
        return ((void*)0);

    *pi_size = i_total_size;
    uint8_t *p = p_data;


    *p++ = 0x01;
    memcpy( p, values.general_configuration, 12 ); p += 12;

    SetWBE( p, 0xF000 ); p += 2;

    *p++ = 0xFC;
    *p++ = (0xFC | (values.i_chroma_idc & 0x03));
    *p++ = (0xF8 | (values.i_bit_depth_luma_minus8 & 0x07));
    *p++ = (0xF8 | (values.i_bit_depth_chroma_minus8 & 0x07));


    SetWBE( p, 0x0000); p += 2;

    *p++ = ( ((values.i_numTemporalLayer & 0x07) << 3) |
              (values.b_temporalIdNested << 2) |
              (i_nal_length_size - 1) );

    *p++ = !!p_params->i_vps_count + !!p_params->i_sps_count +
           !!p_params->i_pps_count + !!p_params->i_seipref_count +
           !!p_params->i_seisuff_count;


    HEVC_DCR_ADD_NALS(HEVC_NAL_VPS, p_params->i_vps_count,
                      p_params->p_vps, p_params->rgi_vps);
    HEVC_DCR_ADD_NALS(HEVC_NAL_SPS, p_params->i_sps_count,
                      p_params->p_sps, p_params->rgi_sps);
    HEVC_DCR_ADD_NALS(HEVC_NAL_PPS, p_params->i_pps_count,
                      p_params->p_pps, p_params->rgi_pps);
    HEVC_DCR_ADD_NALS(HEVC_NAL_PREF_SEI, p_params->i_seipref_count,
                      p_params->p_seipref, p_params->rgi_seipref);
    HEVC_DCR_ADD_NALS(HEVC_NAL_SUFF_SEI, p_params->i_seisuff_count,
                      p_params->p_seisuff, p_params->rgi_seisuff);

    return p_data;
}
