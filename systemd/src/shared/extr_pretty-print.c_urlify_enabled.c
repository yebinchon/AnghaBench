
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ colors_enabled () ;
 int getenv_bool (char*) ;
 int pager_have () ;

__attribute__((used)) static bool urlify_enabled(void) {
        static int cached_urlify_enabled = -1;





        if (cached_urlify_enabled < 0) {
                int val;

                val = getenv_bool("SYSTEMD_URLIFY");
                if (val >= 0)
                        cached_urlify_enabled = val;
                else
                        cached_urlify_enabled = colors_enabled() && !pager_have();
        }

        return cached_urlify_enabled;
}
