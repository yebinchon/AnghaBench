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
typedef  char const pam_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int PAM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (char const*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int FUNC4(pam_handle_t *handle, const char *key, const char *value) {
        int r;

        FUNC0(handle);
        FUNC0(key);

        /* Updates the environment, but only if there's actually a value set. Also, log about errors */

        if (FUNC1(value))
                return PAM_SUCCESS;

        r = FUNC2(handle, key, value, 0);
        if (r != PAM_SUCCESS)
                FUNC3(handle, LOG_ERR, "Failed to set environment variable %s.", key);

        return r;
}