
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint_fast32_t ;
struct TYPE_2__ {uintptr_t i_code; char* psz; } ;


 size_t KEYS_COUNT ;
 int KEY_MODIFIER ;
 int KEY_MODIFIER_ALT ;
 int KEY_MODIFIER_COMMAND ;
 int KEY_MODIFIER_CTRL ;
 int KEY_MODIFIER_META ;
 int KEY_MODIFIER_SHIFT ;
 char const* N_ (char*) ;
 int asprintf (char**,char*,char*,char*,char*,char*,char*,char const*) ;
 char const* nooptext (char const*) ;
 TYPE_1__* s_keys ;
 int * utf8_cp (uintptr_t,char*) ;
 char const* vlc_gettext (char const*) ;

char *vlc_keycode2str (uint_fast32_t code, bool locale)
{
    const char *(*tr)(const char *) = locale ? vlc_gettext : nooptext;
    const char *name;
    char *str, buf[5];
    uintptr_t key = code & ~KEY_MODIFIER;

    for (size_t i = 0; i < KEYS_COUNT; i++)
        if (s_keys[i].i_code == key)
        {
            name = s_keys[i].psz;
            goto found;
        }

    if (utf8_cp (key, buf) == ((void*)0))
        return ((void*)0);
    name = buf;

found:
    if (asprintf (&str, "%s%s%s%s%s%s",
                  (code & KEY_MODIFIER_CTRL) ? tr(N_("Ctrl+")) : "",
                  (code & KEY_MODIFIER_ALT) ? tr(N_("Alt+")) : "",
                  (code & KEY_MODIFIER_SHIFT) ? tr(N_("Shift+")) : "",
                  (code & KEY_MODIFIER_META) ? tr(N_("Meta+")) : "",
                  (code & KEY_MODIFIER_COMMAND) ? tr(N_("Command+")) : "",
                  tr(name)) == -1)
        return ((void*)0);
    return str;
}
