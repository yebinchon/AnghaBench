#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int i_rate; int i_frame_length; int i_bitrate; int /*<<< orphan*/  i_physical_channels; } ;
typedef  TYPE_1__ vlc_dts_header_t ;
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int const*) ; 
 int /*<<< orphan*/  VLC_DTS_HEADER_SIZE ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5( vlc_dts_header_t *p_header,
                                             const void *p_buffer )
{
    bs_t s;
    FUNC1( &s, p_buffer, VLC_DTS_HEADER_SIZE );
    FUNC3( &s, 32 /*SYNCEXTSSH*/ );
    uint8_t ucFmtInfoCode = FUNC2( &s, 8 );
    if( ucFmtInfoCode != 0x02 /*LBR_HDRCODE_DECODERINIT*/ )
        return VLC_EGENERIC;
    p_header->i_rate = FUNC2( &s, 8 );
    /* See ETSI TS 102 114, table 9-3 */
    const unsigned int LBRsamplerates[] = {
        8000, 16000, 32000,
        0, 0,
        22050, 44100,
        0, 0, 0,
        12000, 24000, 48000,
    };
    if(p_header->i_rate >= FUNC0(LBRsamplerates))
        return VLC_EGENERIC;
    p_header->i_rate = LBRsamplerates[p_header->i_rate];
    if( p_header->i_rate < 16000 )
        p_header->i_frame_length = 1024;
    else if( p_header->i_rate < 32000 )
        p_header->i_frame_length = 2048;
    else
        p_header->i_frame_length = 4096;

    uint16_t i_spkrmask = FUNC2( &s, 16 );
    FUNC4( i_spkrmask, &p_header->i_physical_channels );
    FUNC3( &s, 16 );
    FUNC3( &s, 8 );
    uint16_t nLBRBitRateMSnybbles = FUNC2( &s, 8 );
    FUNC3( &s, 16 );
    uint16_t nLBRScaledBitRate_LSW = FUNC2( &s, 16 );
    p_header->i_bitrate = nLBRScaledBitRate_LSW | ((nLBRBitRateMSnybbles & 0xF0) << 12);
    return VLC_SUCCESS;
}