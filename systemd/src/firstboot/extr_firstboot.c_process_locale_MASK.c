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

/* Variables and functions */
 int /*<<< orphan*/  COPY_REFLINK ; 
 int ENOENT ; 
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ arg_copy_locale ; 
 int /*<<< orphan*/  arg_locale ; 
 int /*<<< orphan*/  arg_locale_messages ; 
 scalar_t__ arg_root ; 
 int FUNC0 (char*,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int) ; 
 char* FUNC6 (scalar_t__,char*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (char const*,char**) ; 

__attribute__((used)) static int FUNC11(void) {
        const char *etc_localeconf;
        char* locales[3];
        unsigned i = 0;
        int r;

        etc_localeconf = FUNC6(arg_root, "/etc/locale.conf");
        if (FUNC2(etc_localeconf, F_OK) >= 0)
                return 0;

        if (arg_copy_locale && arg_root) {

                (void) FUNC5(etc_localeconf, 0755);
                r = FUNC0("/etc/locale.conf", etc_localeconf, 0, 0644, 0, 0, COPY_REFLINK);
                if (r != -ENOENT) {
                        if (r < 0)
                                return FUNC3(r, "Failed to copy %s: %m", etc_localeconf);

                        FUNC4("%s copied.", etc_localeconf);
                        return 0;
                }
        }

        r = FUNC7();
        if (r < 0)
                return r;

        if (!FUNC1(arg_locale))
                locales[i++] = FUNC9("LANG=", arg_locale);
        if (!FUNC1(arg_locale_messages) && !FUNC8(arg_locale_messages, arg_locale))
                locales[i++] = FUNC9("LC_MESSAGES=", arg_locale_messages);

        if (i == 0)
                return 0;

        locales[i] = NULL;

        (void) FUNC5(etc_localeconf, 0755);
        r = FUNC10(etc_localeconf, locales);
        if (r < 0)
                return FUNC3(r, "Failed to write %s: %m", etc_localeconf);

        FUNC4("%s written.", etc_localeconf);
        return 0;
}