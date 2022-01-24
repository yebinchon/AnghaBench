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
struct TYPE_5__ {scalar_t__ i_queue; int /*<<< orphan*/ * p_queue; int /*<<< orphan*/  p_cea708; int /*<<< orphan*/  p_dtvcc; scalar_t__ p_eia608; } ;
typedef  TYPE_2__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( p_sys->p_eia608 )
    {
        FUNC2( p_sys->p_eia608 );
    }
    else
    {
        FUNC0( p_sys->p_dtvcc );
        FUNC1( p_sys->p_cea708 );
    }

    FUNC3( p_sys->p_queue );
    p_sys->p_queue = NULL;
    p_sys->i_queue = 0;
}