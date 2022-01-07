
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STRPTR_IN_SET (int ,char*,char*) ;
 int getenv (char*) ;
 int getenv_bool (char*) ;
 scalar_t__ is_locale_utf8 () ;

__attribute__((used)) static bool emoji_enabled(void) {
        static int cached_emoji_enabled = -1;

        if (cached_emoji_enabled < 0) {
                int val;

                val = getenv_bool("SYSTEMD_EMOJI");
                if (val < 0)
                        cached_emoji_enabled =
                                is_locale_utf8() &&
                                !STRPTR_IN_SET(getenv("TERM"), "dumb", "linux");
                else
                        cached_emoji_enabled = val;
        }

        return cached_emoji_enabled;
}
