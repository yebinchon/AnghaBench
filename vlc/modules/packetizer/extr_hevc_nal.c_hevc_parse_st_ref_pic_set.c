
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int nal_ue_t ;
typedef int nal_u1_t ;
struct TYPE_3__ {unsigned int num_delta_pocs; } ;
typedef TYPE_1__ hevc_short_term_ref_pic_set_t ;
typedef int bs_t ;


 int VLC_UNUSED (int) ;
 int bs_read1 (int *) ;
 unsigned int bs_read_ue (int *) ;
 unsigned int bs_remain (int *) ;

__attribute__((used)) static bool hevc_parse_st_ref_pic_set( bs_t *p_bs, unsigned stRpsIdx,
                                       unsigned num_short_term_ref_pic_sets,
                                       hevc_short_term_ref_pic_set_t *p_sets )
{
    if( stRpsIdx && bs_read1( p_bs ) )
    {
        nal_ue_t delta_idx_minus_1 = 0;
        if( stRpsIdx == num_short_term_ref_pic_sets )
        {
            delta_idx_minus_1 = bs_read_ue( p_bs );
            if( delta_idx_minus_1 >= stRpsIdx )
                return 0;
        }
        if(delta_idx_minus_1 == stRpsIdx)
            return 0;

        nal_u1_t delta_rps_sign = bs_read1( p_bs );
        nal_ue_t abs_delta_rps_minus1 = bs_read_ue( p_bs );
        unsigned RefRpsIdx = stRpsIdx - delta_idx_minus_1 - 1;
        int deltaRps = ( 1 - ( delta_rps_sign << 1 ) ) * ( abs_delta_rps_minus1 + 1 );
        VLC_UNUSED(deltaRps);

        unsigned numDeltaPocs = p_sets[RefRpsIdx].num_delta_pocs;
        p_sets[stRpsIdx].num_delta_pocs = 0;
        for( unsigned j=0; j<= numDeltaPocs; j++ )
        {
            if( ! bs_read1( p_bs ) )
            {
                if( bs_read1( p_bs ) )
                    p_sets[stRpsIdx].num_delta_pocs++;
            }
            else
                p_sets[stRpsIdx].num_delta_pocs++;
        }
    }
    else
    {
        nal_ue_t num_negative_pics = bs_read_ue( p_bs );
        nal_ue_t num_positive_pics = bs_read_ue( p_bs );
        if( bs_remain( p_bs ) < (num_negative_pics + num_positive_pics) * 2 )
            return 0;
        for(unsigned int i=0; i<num_negative_pics; i++)
        {
            (void) bs_read_ue( p_bs );
            (void) bs_read1( p_bs );
        }
        for(unsigned int i=0; i<num_positive_pics; i++)
        {
            (void) bs_read_ue( p_bs );
            (void) bs_read1( p_bs );
        }
        p_sets[stRpsIdx].num_delta_pocs = num_positive_pics + num_negative_pics;
    }

    return 1;
}
