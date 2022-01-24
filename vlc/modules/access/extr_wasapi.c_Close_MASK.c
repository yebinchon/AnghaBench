#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_3__ {int /*<<< orphan*/  out; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_4__ {int /*<<< orphan*/ * events; int /*<<< orphan*/  client; int /*<<< orphan*/  es; int /*<<< orphan*/  thread; } ;
typedef  TYPE_2__ demux_sys_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  COINIT_MULTITHREADED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9 (vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;
    demux_sys_t *sys = demux->p_sys;
    HRESULT hr;

    hr = FUNC1(NULL, COINIT_MULTITHREADED);
    FUNC7(FUNC4(hr));

    FUNC5(sys->events[0]);
    FUNC6(sys->thread, INFINITE);
    FUNC0(sys->thread);

    FUNC8(demux->out, sys->es);
    FUNC3(sys->client);
    FUNC2();
    for (unsigned i = 0; i < 2; i++)
        FUNC0(sys->events[i]);
}