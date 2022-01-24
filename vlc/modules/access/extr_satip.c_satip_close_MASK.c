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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_5__ {int /*<<< orphan*/  control; int /*<<< orphan*/  content_base; int /*<<< orphan*/  tcp_sock; int /*<<< orphan*/  rtcp_sock; int /*<<< orphan*/  udp_sock; int /*<<< orphan*/  fifo; int /*<<< orphan*/  thread; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(vlc_object_t *obj)
{
    stream_t *access = (stream_t *)obj;
    access_sys_t *sys = access->p_sys;

    FUNC4(sys->thread);
    FUNC5(sys->thread, NULL);

    FUNC3(access);

    FUNC0(sys->fifo);
    FUNC2(sys->udp_sock);
    FUNC2(sys->rtcp_sock);
    FUNC2(sys->tcp_sock);
    FUNC1(sys->content_base);
    FUNC1(sys->control);
}