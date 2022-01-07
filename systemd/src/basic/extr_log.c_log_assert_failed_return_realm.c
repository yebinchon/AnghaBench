
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LogRealm ;


 int LOG_DEBUG ;
 int LOG_REALM_PLUS_LEVEL (int ,int ) ;
 int PROTECT_ERRNO ;
 int log_assert (int ,char const*,char const*,int,char const*,char*) ;

void log_assert_failed_return_realm(
                LogRealm realm,
                const char *text,
                const char *file,
                int line,
                const char *func) {
        PROTECT_ERRNO;
        log_assert(LOG_REALM_PLUS_LEVEL(realm, LOG_DEBUG), text, file, line, func,
                   "Assertion '%s' failed at %s:%u, function %s(). Ignoring.");
}
