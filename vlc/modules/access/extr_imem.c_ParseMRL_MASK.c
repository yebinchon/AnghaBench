#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int VLC_VAR_DOINHERIT ; 
#define  VLC_VAR_INTEGER 129 
#define  VLC_VAR_STRING 128 
 scalar_t__ FUNC0 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,...) ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void FUNC10(vlc_object_t *object, const char *psz_path)
{
    static const struct {
        const char *name;
        int        type;
    } options[] = {
        { "id",         VLC_VAR_INTEGER },
        { "group",      VLC_VAR_INTEGER },
        { "cat",        VLC_VAR_INTEGER },
        { "samplerate", VLC_VAR_INTEGER },
        { "channels",   VLC_VAR_INTEGER },
        { "width",      VLC_VAR_INTEGER },
        { "height",     VLC_VAR_INTEGER },
        { "cookie",     VLC_VAR_STRING },
        { "codec",      VLC_VAR_STRING },
        { "language",   VLC_VAR_STRING },
        { "dar",        VLC_VAR_STRING },
        { "fps",        VLC_VAR_STRING },
        { NULL, -1 }
    };

    char *dup = FUNC5(psz_path);
    if (!dup)
        return;
    char *current = dup;

    while (current) {
        char *next = FUNC3(current, ':');
        if (next)
            *next++ = '\0';

        char *option = current;
        char *value = FUNC3(current, '=');
        if (value) {
            *value++ = '\0';
            FUNC2(object, "option '%s' value '%s'", option, value);
        } else {
            FUNC2(object, "option '%s' without value (unsupported)", option);
        }

        char *name;
        if (FUNC0(&name, "imem-%s", option) < 0)
            name = NULL;
        for (unsigned i = 0; name && options[i].name; i++) {
            if (FUNC4(options[i].name, option))
                continue;
            /* */
            FUNC7(object, name, options[i].type | VLC_VAR_DOINHERIT);
            if (options[i].type == VLC_VAR_INTEGER && value) {
                FUNC8(object, name, FUNC6(value, NULL, 0));
            } else if (options[i].type == VLC_VAR_STRING && value) {
                FUNC9(object, name, value);
            }
            break;
        }
        FUNC1(name);

        /* */
        current = next;
    }
    FUNC1(dup);
}