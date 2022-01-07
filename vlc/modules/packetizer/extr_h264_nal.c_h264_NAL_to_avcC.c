
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int * b; } ;
typedef TYPE_1__ bo_t ;
typedef int block_t ;


 int H264_SPS_ID_MAX ;
 size_t const UINT16_MAX ;
 int assert (int ) ;
 int bo_add_16be (TYPE_1__*,size_t const) ;
 int bo_add_8 (TYPE_1__*,int) ;
 int bo_add_mem (TYPE_1__*,size_t const,int const*) ;
 int bo_init (TYPE_1__*,int) ;

block_t *h264_NAL_to_avcC( uint8_t i_nal_length_size,
                           const uint8_t **pp_sps_buf,
                           const size_t *p_sps_size, uint8_t i_sps_count,
                           const uint8_t **pp_pps_buf,
                           const size_t *p_pps_size, uint8_t i_pps_count )
{

    if( i_nal_length_size != 1 && i_nal_length_size != 2
     && i_nal_length_size != 4 )
        return ((void*)0);
    if( i_sps_count == 0 || i_sps_count > H264_SPS_ID_MAX || i_pps_count == 0 )
        return ((void*)0);


    size_t i_spspps_size = 0;
    for( size_t i = 0; i < i_sps_count; ++i )
    {
        assert( pp_sps_buf[i] && p_sps_size[i] );
        if( p_sps_size[i] < 4 || p_sps_size[i] > UINT16_MAX )
            return ((void*)0);
        i_spspps_size += p_sps_size[i] + 2 ;
    }
    for( size_t i = 0; i < i_pps_count; ++i )
    {
        assert( pp_pps_buf[i] && p_pps_size[i] );
        if( p_pps_size[i] > UINT16_MAX)
            return ((void*)0);
        i_spspps_size += p_pps_size[i] + 2 ;
    }

    bo_t bo;

    if( bo_init( &bo, 7 + i_spspps_size ) != 1 )
        return ((void*)0);

    bo_add_8( &bo, 1 );
    bo_add_mem( &bo, 3, &pp_sps_buf[0][1] );
    bo_add_8( &bo, 0xfc | (i_nal_length_size - 1) );

    bo_add_8( &bo, 0xe0 | i_sps_count );
    for( size_t i = 0; i < i_sps_count; ++i )
    {
        bo_add_16be( &bo, p_sps_size[i] );
        bo_add_mem( &bo, p_sps_size[i], pp_sps_buf[i] );
    }

    bo_add_8( &bo, i_pps_count );
    for( size_t i = 0; i < i_pps_count; ++i )
    {
        bo_add_16be( &bo, p_pps_size[i] );
        bo_add_mem( &bo, p_pps_size[i], pp_pps_buf[i] );
    }

    return bo.b;
}
