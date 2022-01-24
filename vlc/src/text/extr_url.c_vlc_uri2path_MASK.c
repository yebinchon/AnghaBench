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
 int FUNC0 (char**,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,char,int) ; 
 char* FUNC3 (char*,char*,scalar_t__) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (char*,char*) ; 
 char* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int) ; 
 char* FUNC9 (char*,int) ; 
 char* FUNC10 (char const*,char*) ; 
 int FUNC11 (char*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

char *FUNC14 (const char *url)
{
    char *ret = NULL;
    char *end;

    char *path = FUNC10 (url, "://");
    if (path == NULL)
        return NULL; /* unsupported scheme or invalid syntax */

    end = FUNC2 (url, '/', path - url);
    size_t schemelen = ((end != NULL) ? end : path) - url;
    path += 3; /* skip "://" */

    /* Remove request parameters and/or HTML anchor if present */
    end = path + FUNC5 (path, "?#");
    path = FUNC9 (path, end - path);
    if (FUNC12(path == NULL))
        return NULL; /* boom! */

    /* Decode path */
    FUNC13 (path);

    if (schemelen == 4 && !FUNC8 (url, "file", 4))
    {
#if !defined (_WIN32) && !defined (__OS2__)
        /* Leading slash => local path */
        if (*path == '/')
            return path;
        /* Local path disguised as a remote one */
        if (!FUNC8 (path, "localhost/", 10))
            return FUNC3 (path, path + 9, FUNC7 (path + 9) + 1);
#else
        /* cannot start with a space */
        if (*path == ' ')
            goto out;
        for (char *p = strchr (path, '/'); p; p = strchr (p + 1, '/'))
            *p = '\\';

        /* Leading backslash => local path */
        if (*path == '\\')
            return memmove (path, path + 1, strlen (path + 1) + 1);
        /* Local path disguised as a remote one */
        if (!strncasecmp (path, "localhost\\", 10))
            return memmove (path, path + 10, strlen (path + 10) + 1);
        /* UNC path */
        if (*path && asprintf (&ret, "\\\\%s", path) == -1)
            ret = NULL;
#endif
        /* non-local path :-( */
    }
    else
    if (schemelen == 2 && !FUNC8 (url, "fd", 2))
    {
        int fd = FUNC11 (path, &end, 0);

        if (*end)
            goto out;

#if !defined( _WIN32 ) && !defined( __OS2__ )
        switch (fd)
        {
            case 0:
                ret = FUNC6 ("/dev/stdin");
                break;
            case 1:
                ret = FUNC6 ("/dev/stdout");
                break;
            case 2:
                ret = FUNC6 ("/dev/stderr");
                break;
            default:
                if (FUNC0 (&ret, "/dev/fd/%d", fd) == -1)
                    ret = NULL;
        }
#else
        /* XXX: Does this work on WinCE? */
        if (fd < 2)
            ret = strdup ("CON");
#endif
    }

out:
    FUNC1 (path);
    return ret; /* unknown scheme */
}