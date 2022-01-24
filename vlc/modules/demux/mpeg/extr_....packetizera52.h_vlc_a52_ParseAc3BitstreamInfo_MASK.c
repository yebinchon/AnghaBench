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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {void* i_dsurmod; } ;
struct vlc_a52_bitstream_info {int i_fscod; int i_frmsizcod; int i_acmod; void* i_lfeon; TYPE_1__ ac3; void* i_bsmod; void* i_bsid; } ;
typedef  int /*<<< orphan*/  bs_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC3( struct vlc_a52_bitstream_info *bs,
                                                 const uint8_t *p_buf, size_t i_buf )
{
    bs_t s;
    FUNC0( &s, p_buf, i_buf );

    /* cf. 5.3.2 */
    bs->i_fscod = FUNC1( &s, 2 );
    if( bs->i_fscod == 3 )
        return VLC_EGENERIC;
    bs->i_frmsizcod = FUNC1( &s, 6 );
    if( bs->i_frmsizcod >= 38 )
        return VLC_EGENERIC;
    bs->i_bsid = FUNC1( &s, 5 );
    bs->i_bsmod = FUNC1( &s, 3 );
    bs->i_acmod = FUNC1( &s, 3 );
    if( ( bs->i_acmod & 0x1 ) && ( bs->i_acmod != 0x1 ) )
    {
        /* if 3 front channels */
        FUNC2( &s, 2 ); /* i_cmixlev */
    }
    if( bs->i_acmod & 0x4 )
    {
        /* if a surround channel exists */
        FUNC2( &s, 2 ); /* i_surmixlev */
    }
    /* if in 2/0 mode */
    bs->ac3.i_dsurmod = bs->i_acmod == 0x2 ? FUNC1( &s, 2 ) : 0;
    bs->i_lfeon = FUNC1( &s, 1 );

    return VLC_SUCCESS;
}