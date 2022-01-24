#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_8__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ decoder_t ;
struct TYPE_7__ {scalar_t__ p_ep; } ;
struct TYPE_6__ {scalar_t__ p_sh; } ;
struct TYPE_9__ {int /*<<< orphan*/  cc; int /*<<< orphan*/  cc_next; TYPE_2__ ep; TYPE_1__ sh; scalar_t__ p_frame; int /*<<< orphan*/  packetizer; } ;
typedef  TYPE_4__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4( vlc_object_t *p_this )
{
    decoder_t     *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;

    FUNC3( &p_sys->packetizer );
    if( p_sys->p_frame )
        FUNC0( p_sys->p_frame );
    if( p_sys->sh.p_sh )
        FUNC0( p_sys->sh.p_sh );
    if( p_sys->ep.p_ep )
        FUNC0( p_sys->ep.p_ep );

    FUNC1( &p_sys->cc_next );
    FUNC1( &p_sys->cc );

    FUNC2( p_sys );
}