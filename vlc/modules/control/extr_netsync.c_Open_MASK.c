#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ intf_thread_t ;
struct TYPE_12__ {int fd; int timeout; int /*<<< orphan*/  playlist; int /*<<< orphan*/ * input; scalar_t__ is_master; } ;
typedef  TYPE_2__ intf_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETSYNC_PORT ; 
 int /*<<< orphan*/  PlaylistEvent ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,char*) ; 
 int FUNC10 (TYPE_1__*,char*) ; 
 char* FUNC11 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC12(vlc_object_t *object)
{
    intf_thread_t *intf = (intf_thread_t*)object;
    intf_sys_t    *sys;
    int fd;

    if (!FUNC9(intf, "netsync-master")) {
        char *psz_master = FUNC11(intf, "netsync-master-ip");
        if (psz_master == NULL) {
            FUNC3(intf, "master address not specified");
            return VLC_EGENERIC;
        }
        fd = FUNC5(FUNC0(intf), psz_master, NETSYNC_PORT, -1);
        FUNC1(psz_master);
    } else {
        fd = FUNC6(FUNC0(intf), NULL, NETSYNC_PORT);
    }

    if (fd == -1) {
        FUNC3(intf, "Netsync socket failure");
        return VLC_EGENERIC;
    }

    intf->p_sys = sys = FUNC2(sizeof(*sys));
    if (!sys) {
        FUNC4(fd);
        return VLC_ENOMEM;
    }

    sys->fd = fd;
    sys->is_master = FUNC9(intf, "netsync-master");
    sys->timeout = FUNC10(intf, "netsync-timeout");
    if (sys->timeout < 500)
        sys->timeout = 500;
    sys->playlist = FUNC7(intf);
    sys->input = NULL;

    FUNC8(sys->playlist, "input-current", PlaylistEvent, intf);
    return VLC_SUCCESS;
}