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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char const*) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static const char* FUNC4(pam_handle_t *handle, const char *key, const char *fallback) {
        const char *v;

        FUNC0(handle);
        FUNC0(key);

        /* Looks for an environment variable, preferably in the environment block associated with the
         * specified PAM handle, falling back to the process' block instead. Why check both? Because we want
         * to permit configuration of session properties from unit files that invoke PAM services, so that
         * PAM services don't have to be reworked to set systemd-specific properties, but these properties
         * can still be set from the unit file Environment= block. */

        v = FUNC2(handle, key);
        if (!FUNC1(v))
                return v;

        /* We use secure_getenv() here, since we might get loaded into su/sudo, which are SUID. Ideally
         * they'd clean up the environment before invoking foreign code (such as PAM modules), but alas they
         * currently don't (to be precise, they clean up the environment they pass to their children, but
         * not their own environ[]). */
        v = FUNC3(key);
        if (!FUNC1(v))
                return v;

        return fallback;
}