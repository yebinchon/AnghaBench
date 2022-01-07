
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const pam_handle_t ;


 int LOG_ERR ;
 int PAM_SUCCESS ;
 int assert (char const*) ;
 scalar_t__ isempty (char const*) ;
 int pam_misc_setenv (char const*,char const*,char const*,int ) ;
 int pam_syslog (char const*,int ,char*,char const*) ;

__attribute__((used)) static int update_environment(pam_handle_t *handle, const char *key, const char *value) {
        int r;

        assert(handle);
        assert(key);



        if (isempty(value))
                return PAM_SUCCESS;

        r = pam_misc_setenv(handle, key, value, 0);
        if (r != PAM_SUCCESS)
                pam_syslog(handle, LOG_ERR, "Failed to set environment variable %s.", key);

        return r;
}
