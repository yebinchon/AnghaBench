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
struct TYPE_4__ {int b_flushed; int /*<<< orphan*/  id; TYPE_2__* p_sout; } ;
typedef  TYPE_1__ sout_packetizer_input_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  p_stream; } ;
typedef  TYPE_2__ sout_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3( sout_packetizer_input_t *p_input )
{
    sout_instance_t     *p_sout = p_input->p_sout;

    FUNC1( &p_sout->lock );
    FUNC0( p_sout->p_stream, p_input->id );
    FUNC2( &p_sout->lock );
    p_input->b_flushed = true;
}