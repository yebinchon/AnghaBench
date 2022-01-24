#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_11__ {int /*<<< orphan*/  sem; int /*<<< orphan*/  output_in_transit; int /*<<< orphan*/  filtered_pictures; int /*<<< orphan*/  started; } ;
typedef  TYPE_2__ filter_sys_t ;
struct TYPE_13__ {scalar_t__ cmd; scalar_t__ length; scalar_t__ user_data; } ;
struct TYPE_12__ {scalar_t__ userdata; } ;
typedef  TYPE_3__ MMAL_PORT_T ;
typedef  TYPE_4__ MMAL_BUFFER_HEADER_T ;

/* Variables and functions */
 scalar_t__ MMAL_EVENT_FORMAT_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
    filter_t *filter = (filter_t *)port->userdata;
    filter_sys_t *sys = filter->p_sys;
    picture_t *picture;

    if (buffer->cmd == 0) {
        if (buffer->length > 0) {
            FUNC1(&sys->started, true);
            FUNC3(sys->filtered_pictures, buffer);
            picture = (picture_t *)buffer->user_data;
        } else {
            picture = (picture_t *)buffer->user_data;
            FUNC5(picture);
        }

        FUNC0(&sys->output_in_transit, 1);
        FUNC6(&sys->sem);
    } else if (buffer->cmd == MMAL_EVENT_FORMAT_CHANGED) {
        FUNC4(filter, "MMAL_EVENT_FORMAT_CHANGED seen but not handled");
        FUNC2(buffer);
    } else {
        FUNC2(buffer);
    }
}