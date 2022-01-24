#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_access_out_t ;
struct TYPE_6__ {int* aes_ivs; int /*<<< orphan*/  aes_ctx; int /*<<< orphan*/  b_generate_iv; } ;
typedef  TYPE_2__ sout_access_out_sys_t ;
typedef  scalar_t__ gcry_error_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5( sout_access_out_t *p_access, uint32_t i_segment )
{
    sout_access_out_sys_t *p_sys = p_access->p_sys;

    if( !p_sys->b_generate_iv )
    {
        /* Use segment number as IV if randomIV isn't selected*/
        FUNC3( p_sys->aes_ivs, 0, 16 * sizeof(uint8_t));
        p_sys->aes_ivs[15] = i_segment & 0xff;
        p_sys->aes_ivs[14] = (i_segment >> 8 ) & 0xff;
        p_sys->aes_ivs[13] = (i_segment >> 16 ) & 0xff;
        p_sys->aes_ivs[12] = (i_segment >> 24 ) & 0xff;
    }

    gcry_error_t err = FUNC1( p_sys->aes_ctx,
                                          p_sys->aes_ivs, 16);
    if( err )
    {
        FUNC4(p_access, "Setting AES IVs failed: %s", FUNC2(err) );
        FUNC0( p_sys->aes_ctx);
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}