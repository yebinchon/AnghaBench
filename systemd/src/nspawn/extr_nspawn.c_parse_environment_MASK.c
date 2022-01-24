#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int CLONE_NEWIPC ; 
 int CLONE_NEWPID ; 
 int CLONE_NEWUTS ; 
 int ENXIO ; 
 int /*<<< orphan*/  SETTING_USE_CGNS ; 
 char const* arg_container_service_name ; 
 int /*<<< orphan*/  arg_settings_mask ; 
 int arg_use_cgns ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (int,char*) ; 
 int FUNC5 () ; 
 int FUNC6 (char*,int) ; 

__attribute__((used)) static int FUNC7(void) {
        const char *e;
        int r;

        r = FUNC6("SYSTEMD_NSPAWN_SHARE_NS_IPC", CLONE_NEWIPC);
        if (r < 0)
                return r;
        r = FUNC6("SYSTEMD_NSPAWN_SHARE_NS_PID", CLONE_NEWPID);
        if (r < 0)
                return r;
        r = FUNC6("SYSTEMD_NSPAWN_SHARE_NS_UTS", CLONE_NEWUTS);
        if (r < 0)
                return r;
        r = FUNC6("SYSTEMD_NSPAWN_SHARE_SYSTEM", CLONE_NEWIPC|CLONE_NEWPID|CLONE_NEWUTS);
        if (r < 0)
                return r;

        r = FUNC5();
        if (r < 0)
                return r;

        /* SYSTEMD_NSPAWN_USE_CGNS=0 can be used to disable CLONE_NEWCGROUP use,
         * even if it is supported. If not supported, it has no effect. */
        if (!FUNC0())
                arg_use_cgns = false;
        else {
                r = FUNC3("SYSTEMD_NSPAWN_USE_CGNS");
                if (r < 0) {
                        if (r != -ENXIO)
                                return FUNC4(r, "Failed to parse $SYSTEMD_NSPAWN_USE_CGNS: %m");

                        arg_use_cgns = true;
                } else {
                        arg_use_cgns = r > 0;
                        arg_settings_mask |= SETTING_USE_CGNS;
                }
        }

        e = FUNC2("SYSTEMD_NSPAWN_CONTAINER_SERVICE");
        if (e)
                arg_container_service_name = e;

        return FUNC1();
}