
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LogRealm ;


 int ENOMEM ;
 int LOG_ERR ;
 int LOG_REALM_PLUS_LEVEL (int ,int ) ;
 int log_internal_realm (int ,int ,char const*,int,char const*,char*) ;

int log_oom_internal(LogRealm realm, const char *file, int line, const char *func) {
        return log_internal_realm(LOG_REALM_PLUS_LEVEL(realm, LOG_ERR),
                                  ENOMEM, file, line, func, "Out of memory.");
}
