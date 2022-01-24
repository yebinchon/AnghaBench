#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/ * b; } ;
typedef  TYPE_1__ bo_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int H264_SPS_ID_MAX ; 
 size_t const UINT16_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t const,int const*) ; 
 int FUNC4 (TYPE_1__*,int) ; 

block_t *FUNC5( uint8_t i_nal_length_size,
                           const uint8_t **pp_sps_buf,
                           const size_t *p_sps_size, uint8_t i_sps_count,
                           const uint8_t **pp_pps_buf,
                           const size_t *p_pps_size, uint8_t i_pps_count )
{
    /* The length of the NAL size is encoded using 1, 2 or 4 bytes */
    if( i_nal_length_size != 1 && i_nal_length_size != 2
     && i_nal_length_size != 4 )
        return NULL;
    if( i_sps_count == 0 || i_sps_count > H264_SPS_ID_MAX || i_pps_count == 0 )
        return NULL;

    /* Calculate the total size of all SPS and PPS NALs */
    size_t i_spspps_size = 0;
    for( size_t i = 0; i < i_sps_count; ++i )
    {
        FUNC0( pp_sps_buf[i] && p_sps_size[i] );
        if( p_sps_size[i] < 4 || p_sps_size[i] > UINT16_MAX )
            return NULL;
        i_spspps_size += p_sps_size[i] +  2 /* 16be size place holder */;
    }
    for( size_t i = 0; i < i_pps_count; ++i )
    {
        FUNC0( pp_pps_buf[i] && p_pps_size[i] );
        if( p_pps_size[i] > UINT16_MAX)
            return NULL;
        i_spspps_size += p_pps_size[i] +  2 /* 16be size place holder */;
    }

    bo_t bo;
    /* 1 + 3 + 1 + 1 + 1 + i_spspps_size */
    if( FUNC4( &bo, 7 + i_spspps_size ) != true )
        return NULL;

    FUNC2( &bo, 1 ); /* configuration version */
    FUNC3( &bo, 3, &pp_sps_buf[0][1] ); /* i_profile/profile_compatibility/level */
    FUNC2( &bo, 0xfc | (i_nal_length_size - 1) ); /* 0b11111100 | lengthsize - 1*/

    FUNC2( &bo, 0xe0 | i_sps_count ); /* 0b11100000 | sps_count */
    for( size_t i = 0; i < i_sps_count; ++i )
    {
        FUNC1( &bo, p_sps_size[i] );
        FUNC3( &bo, p_sps_size[i], pp_sps_buf[i] );
    }

    FUNC2( &bo, i_pps_count ); /* pps_count */
    for( size_t i = 0; i < i_pps_count; ++i )
    {
        FUNC1( &bo, p_pps_size[i] );
        FUNC3( &bo, p_pps_size[i], pp_pps_buf[i] );
    }

    return bo.b;
}