#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_8__ {int /*<<< orphan*/  buffer_mutex; int /*<<< orphan*/  buffer_cond; int /*<<< orphan*/  buffers_in_transit; } ;
typedef  TYPE_2__ vout_display_sys_t ;
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_10__ {scalar_t__ user_data; } ;
struct TYPE_9__ {scalar_t__ userdata; } ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  TYPE_4__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
    vout_display_t *vd = (vout_display_t *)port->userdata;
    vout_display_sys_t *sys = vd->sys;
    picture_t *picture = (picture_t *)buffer->user_data;

    if (picture)
        FUNC1(picture);

    FUNC3(&sys->buffer_mutex);
    FUNC0(&sys->buffers_in_transit, 1);
    FUNC2(&sys->buffer_cond);
    FUNC4(&sys->buffer_mutex);
}