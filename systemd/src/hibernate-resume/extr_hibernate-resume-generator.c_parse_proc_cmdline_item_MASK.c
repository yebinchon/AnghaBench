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
 int arg_noresume ; 
 int /*<<< orphan*/  arg_resume_device ; 
 int /*<<< orphan*/  arg_resume_options ; 
 int /*<<< orphan*/  arg_root_options ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (char const*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(const char *key, const char *value, void *data) {

        if (FUNC5(key, "resume")) {
                char *s;

                if (FUNC4(key, value))
                        return 0;

                s = FUNC1(value);
                if (!s)
                        return FUNC2();

                FUNC0(arg_resume_device, s);

        } else if (FUNC5(key, "resumeflags")) {

                if (FUNC4(key, value))
                        return 0;

                if (!FUNC6(&arg_resume_options, ",", value, NULL))
                        return FUNC2();

        } else if (FUNC5(key, "rootflags")) {

                if (FUNC4(key, value))
                        return 0;

                if (!FUNC6(&arg_root_options, ",", value, NULL))
                        return FUNC2();

        } else if (FUNC5(key, "noresume")) {
                if (value) {
                        FUNC3("\"noresume\" kernel command line switch specified with an argument, ignoring.");
                        return 0;
                }

                arg_noresume = true;
        }

        return 0;
}