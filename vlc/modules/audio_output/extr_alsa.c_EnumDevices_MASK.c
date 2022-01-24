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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 char* FUNC2 (void*,char*) ; 
 scalar_t__ FUNC3 (int,char*,void***) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 char** FUNC7 (char**,unsigned int) ; 
 char* FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(char const *varname,
                       char ***restrict idp, char ***restrict namep)
{
    void **hints;

    if (FUNC3(-1, "pcm", &hints) < 0)
        return -1;

    char **ids = NULL, **names = NULL;
    unsigned n = 0;
    bool hinted_default = false;

    for (size_t i = 0; hints[i] != NULL; i++)
    {
        void *hint = hints[i];

        char *name = FUNC2(hint, "NAME");
        if (FUNC6(name == NULL))
            continue;

        char *desc = FUNC2(hint, "DESC");
        if (desc == NULL)
            desc = FUNC8 (name);
        for (char *lf = FUNC4(desc, '\n'); lf; lf = FUNC4(lf, '\n'))
            *lf = ' ';

        ids = FUNC7 (ids, (n + 1) * sizeof (*ids));
        names = FUNC7 (names, (n + 1) * sizeof (*names));
        ids[n] = name;
        names[n] = desc;
        n++;

        if (!FUNC5(name, "default"))
            hinted_default = true;
    }

    FUNC1(hints);

    if (!hinted_default)
    {
        ids = FUNC7 (ids, (n + 1) * sizeof (*ids));
        names = FUNC7 (names, (n + 1) * sizeof (*names));
        ids[n] = FUNC8 ("default");
        names[n] = FUNC8 (FUNC0("Default"));
        n++;
    }

    *idp = ids;
    *namep = names;
    (void) varname;
    return n;
}