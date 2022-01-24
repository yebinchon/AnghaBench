#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct stream_ctrl {struct stream_ctrl* content_type; struct stream_ctrl* buffer; struct stream_ctrl* next; struct stream_ctrl* controls; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_data; int /*<<< orphan*/  wait_space; int /*<<< orphan*/  interrupt; int /*<<< orphan*/  thread; } ;
struct TYPE_2__ {struct stream_ctrl* p_sys; } ;
typedef  TYPE_1__ stream_t ;
typedef  struct stream_ctrl stream_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stream_ctrl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7 (vlc_object_t *obj)
{
    stream_t *stream = (stream_t *)obj;
    stream_sys_t *sys = stream->p_sys;

    FUNC1(sys->thread);
    FUNC4(sys->interrupt);
    FUNC5(sys->thread, NULL);
    FUNC3(sys->interrupt);
    FUNC2(&sys->wait_space);
    FUNC2(&sys->wait_data);
    FUNC6(&sys->lock);

    while(sys->controls)
    {
        struct stream_ctrl *ctrl = sys->controls;
        sys->controls = ctrl->next;
        FUNC0(ctrl);
    }
    FUNC0(sys->buffer);
    FUNC0(sys->content_type);
    FUNC0(sys);
}