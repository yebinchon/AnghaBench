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
typedef  char const passwd ;
typedef  char const* pam_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int PAM_AUTH_ERR ; 
 int PAM_SUCCESS ; 
 int PAM_USER_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (char const**,char const**,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const**,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const**,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(
                pam_handle_t *handle,
                const char **ret_username,
                struct passwd **ret_pw) {

        const char *username = NULL;
        struct passwd *pw = NULL;
        int r;

        FUNC0(handle);
        FUNC0(ret_username);
        FUNC0(ret_pw);

        r = FUNC2(handle, &username, NULL);
        if (r != PAM_SUCCESS) {
                FUNC4(handle, LOG_ERR, "Failed to get user name.");
                return r;
        }

        if (FUNC1(username)) {
                FUNC4(handle, LOG_ERR, "User name not valid.");
                return PAM_AUTH_ERR;
        }

        pw = FUNC3(handle, username);
        if (!pw) {
                FUNC4(handle, LOG_ERR, "Failed to get user data.");
                return PAM_USER_UNKNOWN;
        }

        *ret_pw = pw;
        *ret_username = username;

        return PAM_SUCCESS;
}