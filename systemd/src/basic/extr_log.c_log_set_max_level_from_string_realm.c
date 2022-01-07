
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LogRealm ;


 int EINVAL ;
 int log_level_from_string (char const*) ;
 int log_set_max_level_realm (int ,int) ;

int log_set_max_level_from_string_realm(LogRealm realm, const char *e) {
        int t;

        t = log_level_from_string(e);
        if (t < 0)
                return -EINVAL;

        log_set_max_level_realm(realm, t);
        return 0;
}
