#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
struct stat {int /*<<< orphan*/  st_mtim; } ;
typedef  int /*<<< orphan*/  sd_bus_message ;
struct TYPE_4__ {scalar_t__ locale_mtime; int /*<<< orphan*/ * locale; int /*<<< orphan*/ * locale_cache; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ USEC_INFINITY ; 
 size_t VARIABLE_LANG ; 
 size_t VARIABLE_LANGUAGE ; 
 size_t VARIABLE_LC_ADDRESS ; 
 size_t VARIABLE_LC_COLLATE ; 
 size_t VARIABLE_LC_CTYPE ; 
 size_t VARIABLE_LC_IDENTIFICATION ; 
 size_t VARIABLE_LC_MEASUREMENT ; 
 size_t VARIABLE_LC_MESSAGES ; 
 size_t VARIABLE_LC_MONETARY ; 
 size_t VARIABLE_LC_NAME ; 
 size_t VARIABLE_LC_NUMERIC ; 
 size_t VARIABLE_LC_PAPER ; 
 size_t VARIABLE_LC_TELEPHONE ; 
 size_t VARIABLE_LC_TIME ; 
 int _VARIABLE_LC_MAX ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (char*,struct stat*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(Context *c, sd_bus_message *m) {
        struct stat st;
        int r;

        /* Do not try to re-read the file within single bus operation. */
        if (m) {
                if (m == c->locale_cache)
                        return 0;

                FUNC9(c->locale_cache);
                c->locale_cache = FUNC8(m);
        }

        r = FUNC10("/etc/locale.conf", &st);
        if (r < 0 && errno != ENOENT)
                return -errno;

        if (r >= 0) {
                usec_t t;

                /* If mtime is not changed, then we do not need to re-read the file. */
                t = FUNC11(&st.st_mtim);
                if (c->locale_mtime != USEC_INFINITY && t == c->locale_mtime)
                        return 0;

                c->locale_mtime = t;
                FUNC1(c);

                r = FUNC7(NULL, "/etc/locale.conf",
                                   "LANG",              &c->locale[VARIABLE_LANG],
                                   "LANGUAGE",          &c->locale[VARIABLE_LANGUAGE],
                                   "LC_CTYPE",          &c->locale[VARIABLE_LC_CTYPE],
                                   "LC_NUMERIC",        &c->locale[VARIABLE_LC_NUMERIC],
                                   "LC_TIME",           &c->locale[VARIABLE_LC_TIME],
                                   "LC_COLLATE",        &c->locale[VARIABLE_LC_COLLATE],
                                   "LC_MONETARY",       &c->locale[VARIABLE_LC_MONETARY],
                                   "LC_MESSAGES",       &c->locale[VARIABLE_LC_MESSAGES],
                                   "LC_PAPER",          &c->locale[VARIABLE_LC_PAPER],
                                   "LC_NAME",           &c->locale[VARIABLE_LC_NAME],
                                   "LC_ADDRESS",        &c->locale[VARIABLE_LC_ADDRESS],
                                   "LC_TELEPHONE",      &c->locale[VARIABLE_LC_TELEPHONE],
                                   "LC_MEASUREMENT",    &c->locale[VARIABLE_LC_MEASUREMENT],
                                   "LC_IDENTIFICATION", &c->locale[VARIABLE_LC_IDENTIFICATION]);
                if (r < 0)
                        return r;
        } else {
                int p;

                c->locale_mtime = USEC_INFINITY;
                FUNC1(c);

                /* Fill in what we got passed from systemd. */
                for (p = 0; p < _VARIABLE_LC_MAX; p++) {
                        const char *name;

                        name = FUNC6(p);
                        FUNC0(name);

                        r = FUNC3(&c->locale[p], FUNC2(FUNC4(name)));
                        if (r < 0)
                                return r;
                }
        }

        FUNC5(c->locale);
        return 0;
}