#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_9__ {int /*<<< orphan*/  sem; int /*<<< orphan*/  input_in_transit; } ;
typedef  TYPE_2__ decoder_sys_t ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_11__ {int /*<<< orphan*/ * user_data; } ;
struct TYPE_10__ {scalar_t__ userdata; } ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  TYPE_4__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
    block_t *block = (block_t *)buffer->user_data;
    decoder_t *dec = (decoder_t *)port->userdata;
    decoder_sys_t *sys = dec->p_sys;
    buffer->user_data = NULL;

    FUNC2(buffer);
    if (block)
        FUNC1(block);
    FUNC0(&sys->input_in_transit, 1);
    FUNC3(&sys->sem);
}