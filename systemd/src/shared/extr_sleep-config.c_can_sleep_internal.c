
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SleepConfig ;


 int ENOSPC ;
 int STR_IN_SET (char const*,char*,char*,char*,char*) ;
 int assert (int ) ;
 int can_s2h (int const*) ;
 int can_sleep_disk (char**) ;
 int can_sleep_state (char**) ;
 int enough_swap_for_hibernation () ;
 int log_debug (char*,char const*) ;
 int sleep_settings (char const*,int const*,int*,char***,char***) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int can_sleep_internal(const char *verb, bool check_allowed, const SleepConfig *sleep_config) {
        bool allow;
        char **modes = ((void*)0), **states = ((void*)0);
        int r;

        assert(STR_IN_SET(verb, "suspend", "hibernate", "hybrid-sleep", "suspend-then-hibernate"));

        r = sleep_settings(verb, sleep_config, &allow, &modes, &states);
        if (r < 0)
                return 0;

        if (check_allowed && !allow) {
                log_debug("Sleep mode \"%s\" is disabled by configuration.", verb);
                return 0;
        }

        if (streq(verb, "suspend-then-hibernate"))
                return can_s2h(sleep_config);

        if (!can_sleep_state(states) || !can_sleep_disk(modes))
                return 0;

        if (streq(verb, "suspend"))
                return 1;

        if (!enough_swap_for_hibernation())
                return -ENOSPC;

        return 1;
}
