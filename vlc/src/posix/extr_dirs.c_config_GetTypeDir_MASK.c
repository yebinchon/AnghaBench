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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (char**,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (char**,size_t*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (size_t const) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t const) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 char* FUNC9 (char const*) ; 
 size_t FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char*,char const*,size_t const) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

__attribute__((used)) static char *FUNC13 (const char *xdg_name)
{
    const size_t namelen = FUNC10 (xdg_name);
    const char *home = FUNC4 ("HOME");
    const char *dir = FUNC4 ("XDG_CONFIG_HOME");
    const char *file = "user-dirs.dirs";

    if (home == NULL)
        return NULL;
    if (dir == NULL)
    {
        dir = home;
        file = ".config/user-dirs.dirs";
    }

    char *path;
    if (FUNC0 (&path, "%s/%s", dir, file) == -1)
        return NULL;

    FILE *stream = FUNC2 (path, "rte");
    FUNC3 (path);
    path = NULL;
    if (stream != NULL)
    {
        char *linebuf = NULL;
        size_t linelen = 0;

        while (FUNC5 (&linebuf, &linelen, stream) != -1)
        {
            char *ptr = linebuf;
            ptr += FUNC12 (ptr, " \t"); /* Skip whites */
            if (FUNC11 (ptr, "XDG_", 4))
                continue;
            ptr += 4; /* Skip XDG_ */
            if (FUNC11 (ptr, xdg_name, namelen))
                continue;
            ptr += namelen; /* Skip XDG type name */
            if (FUNC11 (ptr, "_DIR", 4))
                continue;
            ptr += 4; /* Skip _DIR */
            ptr += FUNC12 (ptr, " \t"); /* Skip whites */
            if (*ptr != '=')
                continue;
            ptr++; /* Skip equality sign */
            ptr += FUNC12 (ptr, " \t"); /* Skip whites */
            if (*ptr != '"')
                continue;
            ptr++; /* Skip quote */
            linelen -= ptr - linebuf;

            char *out;
            if (FUNC11 (ptr, "$HOME", 5))
            {
                path = FUNC6 (linelen);
                if (path == NULL)
                    continue;
                out = path;
            }
            else
            {   /* Prefix with $HOME */
                const size_t homelen = FUNC10 (home);
                ptr += 5;
                path = FUNC6 (homelen + linelen - 5);
                if (path == NULL)
                    continue;
                FUNC7 (path, home, homelen);
                out = path + homelen;
            }

            while (*ptr != '"')
            {
                if (*ptr == '\\')
                    ptr++;
                if (*ptr == '\0')
                {
                    FUNC3 (path);
                    path = NULL;
                    break;
                }
                *(out++) = *(ptr++);
            }
            if (path != NULL)
                *out = '\0';
            break;
        }
        FUNC3 (linebuf);
        FUNC1 (stream);
    }

    /* Default! */
    if (path == NULL)
    {
        if (FUNC8 (xdg_name, "DESKTOP") == 0)
        {
            if (FUNC0 (&path, "%s/Desktop", home) == -1)
                return NULL;
        }
        else
            path = FUNC9 (home);
    }

    return path;
}