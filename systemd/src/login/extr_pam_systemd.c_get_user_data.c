
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const passwd ;
typedef char const* pam_handle_t ;


 int LOG_ERR ;
 int PAM_AUTH_ERR ;
 int PAM_SUCCESS ;
 int PAM_USER_UNKNOWN ;
 int assert (char const**) ;
 scalar_t__ isempty (char const*) ;
 int pam_get_user (char const**,char const**,int *) ;
 char* pam_modutil_getpwnam (char const**,char const*) ;
 int pam_syslog (char const**,int ,char*) ;

__attribute__((used)) static int get_user_data(
                pam_handle_t *handle,
                const char **ret_username,
                struct passwd **ret_pw) {

        const char *username = ((void*)0);
        struct passwd *pw = ((void*)0);
        int r;

        assert(handle);
        assert(ret_username);
        assert(ret_pw);

        r = pam_get_user(handle, &username, ((void*)0));
        if (r != PAM_SUCCESS) {
                pam_syslog(handle, LOG_ERR, "Failed to get user name.");
                return r;
        }

        if (isempty(username)) {
                pam_syslog(handle, LOG_ERR, "User name not valid.");
                return PAM_AUTH_ERR;
        }

        pw = pam_modutil_getpwnam(handle, username);
        if (!pw) {
                pam_syslog(handle, LOG_ERR, "Failed to get user data.");
                return PAM_USER_UNKNOWN;
        }

        *ret_pw = pw;
        *ret_username = username;

        return PAM_SUCCESS;
}
