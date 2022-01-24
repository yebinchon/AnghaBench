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
struct TYPE_5__ {scalar_t__ p_description; int /*<<< orphan*/  fmt_out; int /*<<< orphan*/  fmt_in; scalar_t__ p_module; } ;
typedef  TYPE_1__ decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4( decoder_t *p_packetizer )
{
    if( p_packetizer->p_module )
        FUNC1( p_packetizer, p_packetizer->p_module );
    FUNC0( &p_packetizer->fmt_in );
    FUNC0( &p_packetizer->fmt_out );
    if( p_packetizer->p_description )
        FUNC2( p_packetizer->p_description );
    FUNC3(p_packetizer);
}