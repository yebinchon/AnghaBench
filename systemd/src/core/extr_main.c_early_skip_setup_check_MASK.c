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
 scalar_t__ FUNC0 (char*,char*) ; 

__attribute__((used)) static bool FUNC1(int argc, char *argv[]) {
        bool found_deserialize = false;
        int i;

        /* Determine if this is a reexecution or normal bootup. We do the full command line parsing much later, so
         * let's just have a quick peek here. Note that if we have switched root, do all the special setup things
         * anyway, even if in that case we also do deserialization. */

        for (i = 1; i < argc; i++) {
                if (FUNC0(argv[i], "--switched-root"))
                        return false; /* If we switched root, don't skip the setup. */
                else if (FUNC0(argv[i], "--deserialize"))
                        found_deserialize = true;
        }

        return found_deserialize; /* When we are deserializing, then we are reexecuting, hence avoid the extensive setup */
}