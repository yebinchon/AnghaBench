#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_2__ {int strmtyp; int i_substreamid; int i_frmsiz; int i_fscod2; int i_numblkscod; } ;
struct vlc_a52_bitstream_info {int i_fscod; int i_acmod; int i_bsid; int i_bsmod; TYPE_1__ eac3; scalar_t__ i_lfeon; } ;
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 size_t VLC_A52_MIN_HEADER_SIZE ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC5( struct vlc_a52_bitstream_info *bs,
                                                  const uint8_t *p_buf, size_t i_buf )
{
    bs_t s;
    FUNC1( &s, p_buf, i_buf );
    bs->eac3.strmtyp = FUNC2( &s, 2 );      /* Stream Type */
    bs->eac3.i_substreamid = FUNC2( &s, 3 );/* Substream Identification */

    bs->eac3.i_frmsiz = FUNC2( &s, 11 );
    if( bs->eac3.i_frmsiz < 2 )
        return VLC_EGENERIC;

    bs->i_fscod = FUNC2( &s, 2 );
    if( bs->i_fscod == 0x03 )
    {
        bs->eac3.i_fscod2 = FUNC2( &s, 2 );
        if( bs->eac3.i_fscod2 == 0x03 )
            return VLC_EGENERIC;
        bs->eac3.i_numblkscod = 0x03;
    }
    else bs->eac3.i_numblkscod = FUNC2( &s, 2 );

    bs->i_acmod = FUNC2( &s, 3 );
    bs->i_lfeon = FUNC3( &s );
    bs->i_bsid = FUNC2( &s, 5 );

    if( i_buf <= VLC_A52_MIN_HEADER_SIZE )
    {
        bs->i_bsmod = 0;
        return VLC_SUCCESS;
    }

    FUNC4( &s, 5 ); /* dialnorm */
    if(FUNC3( &s ))
        FUNC4( &s, 8 ); /* compr */

    if( bs->i_acmod == 0x00 )
    {
        FUNC4( &s, 5 );
        if(FUNC3( &s ))
            FUNC4( &s, 8 ); /* compr2 */
    }

    if( bs->eac3.strmtyp == 0x01 && FUNC3( &s ) )
        FUNC4( &s, 16 ); /* chanmap */

    if( FUNC3( &s ) ) /* mixmdate */
    {
        if( bs->i_acmod > 0x02 )
        {
            FUNC4( &s, 2 ); /* dmixmod */
            if( bs->i_acmod & 0x01 )
                FUNC4( &s, 6 ); /* ltrtcmixlev + lorocmixlev */
            if( bs->i_acmod & 0x04 )
                FUNC4( &s, 6 ); /* ltrtsurmixlev + lorosurmixlev */
        }

        if( bs->i_lfeon && FUNC3( &s ) )
            FUNC4( &s, 5 ); /* (lfemixlevcode) */

        if( bs->eac3.strmtyp == 0x00 )
        {
            if( FUNC3( &s ) )
                FUNC4( &s, 6 ); /* pgmscl */
            if( bs->i_acmod == 0x00 && FUNC3( &s ) )
                FUNC4( &s, 6 ); /* pgmscl2 */
            if(FUNC3( &s ))
                FUNC4( &s, 6 ); /* extpgmscl */
            const uint8_t i_mixdef = FUNC2( &s, 2 );
            if( i_mixdef == 0x01 )
                FUNC4( &s, 5 ); /* premixcmpsel + drcsrc + premixcmpscl */
            else if( i_mixdef == 0x02 )
                FUNC4( &s, 12 ); /* mixdata */
            else if( i_mixdef == 0x03 )
            {
                const unsigned mixdeflen = FUNC2( &s, 5 ) + 2;
                for(size_t i=0; i<mixdeflen; i++)
                    FUNC4( &s, 8 );
                FUNC0( &s );
            }
            if( bs->i_acmod < 0x02 )
            {
                if( FUNC3( &s ) )
                    FUNC4( &s, 14 ); /* panmean + paninfo */
                if( bs->i_acmod == 0x00 && FUNC3( &s ) )
                    FUNC4( &s, 14 ); /* panmean2 + paninfo2 */
            }
            if( FUNC3( &s ) )
            {
                const uint8_t blkspersyncframe[] = { 0+1, 1, 2, 6 };
                const size_t nb = blkspersyncframe[bs->eac3.i_numblkscod];
                for(size_t i=0; i<nb; i++)
                {
                    if( bs->eac3.i_numblkscod == 0x00 )
                        FUNC4( &s, 5 ); /* blkmixcfginfo[N] */
                }
            }
        }
    }

    if( FUNC3( &s ) ) /* infomdate */
    {
        bs->i_bsmod = FUNC2( &s, 3 );
        // ...
    }
    else bs->i_bsmod = 0;

    return VLC_SUCCESS;
}