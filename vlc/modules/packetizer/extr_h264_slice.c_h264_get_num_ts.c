
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int h264_slice_t ;
typedef int h264_sequence_parameter_set_t ;


 int h264_infer_pic_struct (int const*,int const*,int,int,int) ;

uint8_t h264_get_num_ts( const h264_sequence_parameter_set_t *p_sps,
                         const h264_slice_t *p_slice, uint8_t i_pic_struct,
                         int tFOC, int bFOC )
{
    i_pic_struct = h264_infer_pic_struct( p_sps, p_slice, i_pic_struct, tFOC, bFOC );

    const uint8_t rgi_numclock[9] = { 2, 1, 1, 2, 2, 3, 3, 4, 6 };
    return rgi_numclock[ i_pic_struct ];
}
