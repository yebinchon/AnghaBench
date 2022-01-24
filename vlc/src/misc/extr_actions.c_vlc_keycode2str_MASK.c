#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint_fast32_t ;
struct TYPE_2__ {uintptr_t i_code; char* psz; } ;

/* Variables and functions */
 size_t KEYS_COUNT ; 
 int KEY_MODIFIER ; 
 int KEY_MODIFIER_ALT ; 
 int KEY_MODIFIER_COMMAND ; 
 int KEY_MODIFIER_CTRL ; 
 int KEY_MODIFIER_META ; 
 int KEY_MODIFIER_SHIFT ; 
 char const* FUNC0 (char*) ; 
 int FUNC1 (char**,char*,char*,char*,char*,char*,char*,char const*) ; 
 char const* FUNC2 (char const*) ; 
 TYPE_1__* s_keys ; 
 int /*<<< orphan*/ * FUNC3 (uintptr_t,char*) ; 
 char const* FUNC4 (char const*) ; 

char *FUNC5 (uint_fast32_t code, bool locale)
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

    if (FUNC3 (key, buf) == NULL)
        return NULL;
    name = buf;

found:
    if (FUNC1 (&str, "%s%s%s%s%s%s",
                  (code & KEY_MODIFIER_CTRL) ? tr(FUNC0("Ctrl+")) : "",
                  (code & KEY_MODIFIER_ALT) ? tr(FUNC0("Alt+")) : "",
                  (code & KEY_MODIFIER_SHIFT) ? tr(FUNC0("Shift+")) : "",
                  (code & KEY_MODIFIER_META) ? tr(FUNC0("Meta+")) : "",
                  (code & KEY_MODIFIER_COMMAND) ? tr(FUNC0("Command+")) : "",
                  tr(name)) == -1)
        return NULL;
    return str;
}