#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pf_packetize; int /*<<< orphan*/ * p_sys; } ;
typedef  TYPE_1__ decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  PacketizeClosed ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static void FUNC4( decoder_t *p_dec )
{
    FUNC1( FUNC0( p_dec ) );
    p_dec->p_sys = NULL;
    int res = FUNC2( FUNC0( p_dec ) );
    if ( res != VLC_SUCCESS )
    {
        FUNC3( p_dec, "failed to flush with error %d", res );
        p_dec->pf_packetize = PacketizeClosed;
    }
}