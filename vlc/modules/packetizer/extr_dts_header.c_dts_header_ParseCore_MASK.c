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
struct TYPE_3__ {int i_frame_size; scalar_t__ syncword; int i_frame_length; int /*<<< orphan*/  i_physical_channels; int /*<<< orphan*/  i_rate; int /*<<< orphan*/  i_chan_mode; int /*<<< orphan*/  i_bitrate; } ;
typedef  TYPE_1__ vlc_dts_header_t ;
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 scalar_t__ DTS_SYNC_CORE_14BITS_BE ; 
 scalar_t__ DTS_SYNC_CORE_14BITS_LE ; 
 int /*<<< orphan*/  VLC_DTS_HEADER_SIZE ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6( vlc_dts_header_t *p_header,
                                 const void *p_buffer)
{
    bs_t s;
    FUNC0( &s, p_buffer, VLC_DTS_HEADER_SIZE );
    FUNC2( &s, 32 /*SYNC*/ + 1 /*FTYPE*/ + 5 /*SHORT*/ + 1 /*CPF*/ );
    uint8_t i_nblks = FUNC1( &s, 7 );
    if( i_nblks < 5 )
        return VLC_EGENERIC;
    uint16_t i_fsize = FUNC1( &s, 14 );
    if( i_fsize < 95 )
        return VLC_EGENERIC;
    uint8_t i_amode = FUNC1( &s, 6 );
    uint8_t i_sfreq = FUNC1( &s, 4 );
    uint8_t i_rate = FUNC1( &s, 5 );
    FUNC2( &s, 1 /*FixedBit*/ + 1 /*DYNF*/ + 1 /*TIMEF*/ + 1 /*AUXF*/ +
             1 /*HDCD*/ + 3 /*EXT_AUDIO_ID*/ + 1 /*EXT_AUDIO */ + 1 /*ASPF*/ );
    uint8_t i_lff = FUNC1( &s, 2 );

    bool b_lfe = i_lff == 1 || i_lff == 2;

    p_header->i_rate = FUNC5( i_sfreq );
    p_header->i_bitrate = FUNC3( i_rate );
    p_header->i_frame_size = i_fsize + 1;
    if( p_header->syncword == DTS_SYNC_CORE_14BITS_LE ||
        p_header->syncword == DTS_SYNC_CORE_14BITS_BE )
        p_header->i_frame_size = p_header->i_frame_size * 16 / 14;
    /* See ETSI TS 102 114, table 5-2 */
    p_header->i_frame_length = (i_nblks + 1) * 32;
    p_header->i_chan_mode = 0;
    p_header->i_physical_channels =
        FUNC4( i_amode, b_lfe, &p_header->i_chan_mode );

    if( !p_header->i_rate || !p_header->i_frame_size ||
        !p_header->i_frame_length || !p_header->i_physical_channels )
        return VLC_EGENERIC;

    return VLC_SUCCESS;
}