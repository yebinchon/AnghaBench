#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_5__ {int /*<<< orphan*/  dts; } ;
typedef  TYPE_2__ decoder_sys_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC3( void *p_private, block_t *p_au )
{
    decoder_t *p_dec = p_private;
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( FUNC1( &p_sys->dts ) == VLC_TICK_INVALID )
    {
        FUNC2( p_dec, "need a starting pts/dts" );
        return VLC_EGENERIC;
    }
    FUNC0(p_au);
    return VLC_SUCCESS;
}