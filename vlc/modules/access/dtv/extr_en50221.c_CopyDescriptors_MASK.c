#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  system_ids_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*,size_t) ; 

__attribute__((used)) static size_t FUNC4( const uint8_t *p_drdata, size_t i_drdata,
                               const system_ids_t *p_ids, uint8_t *p_dest )
{
    size_t i_total = 0;
    while( i_drdata > 0 )
    {
        FUNC2( p_drdata[0] == 0x09 );
        uint8_t i_dr_len = p_drdata[1];
        uint16_t i_sysid = FUNC1( &p_drdata[2] );
        if( FUNC0( p_ids, i_sysid ) )
        {
            if( p_dest ) /* if p_dest is NULL, just count required space */
                FUNC3( &p_dest[i_total], p_drdata, (size_t) i_dr_len + 2 );
            i_total += i_dr_len + 2;
        }
        i_drdata = i_drdata - i_dr_len - 2;
        p_drdata += i_dr_len + 2;
    }
    return i_total;
}