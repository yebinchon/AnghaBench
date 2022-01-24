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
struct TYPE_5__ {scalar_t__ force_local; int /*<<< orphan*/  settings_path; int /*<<< orphan*/  local; int /*<<< orphan*/  image_root; struct TYPE_5__* settings_job; scalar_t__ settings; int /*<<< orphan*/  final_path; struct TYPE_5__* tar_job; } ;
typedef  TYPE_1__ TarPull ;

/* Variables and functions */
 int COPY_REFLINK ; 
 int COPY_REPLACE ; 
 int EEXIST ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(TarPull *i) {
        int r;

        FUNC0(i);
        FUNC0(i->tar_job);

        if (!i->local)
                return 0;

        r = FUNC5(i->final_path, i->image_root, i->local, i->force_local);
        if (r < 0)
                return r;

        if (i->settings) {
                const char *local_settings;
                FUNC0(i->settings_job);

                r = FUNC7(i, ".nspawn", &i->settings_path);
                if (r < 0)
                        return r;

                local_settings = FUNC6(i->image_root, "/", i->local, ".nspawn");

                r = FUNC1(i->settings_path, local_settings, 0664, 0, 0, COPY_REFLINK | (i->force_local ? COPY_REPLACE : 0));
                if (r == -EEXIST)
                        FUNC4(r, "Settings file %s already exists, not replacing.", local_settings);
                else if (r == -ENOENT)
                        FUNC2(r, "Skipping creation of settings file, since none was found.");
                else if (r < 0)
                        FUNC4(r, "Failed to copy settings files %s, ignoring: %m", local_settings);
                else
                        FUNC3("Created new settings file %s.", local_settings);
        }

        return 0;
}