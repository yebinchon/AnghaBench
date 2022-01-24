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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 char* FUNC8 (char const*,char) ; 

__attribute__((used)) static char *FUNC9(const char *name, int type, const char *parent_name,
                                char **include_path, int include_path_count)
{
    char *cpy;
    char *cptr;
    char *path;
    const char *ccptr;
    int i, fd;

    cpy = FUNC4(FUNC7(name)+1);
    if(!cpy)
        return NULL;
    cptr = cpy;

    for(ccptr = name; *ccptr; ccptr++)
    {
        /* Convert to forward slash */
        if(*ccptr == '\\') {
            /* kill double backslash */
            if(ccptr[1] == '\\')
                ccptr++;
            *cptr = '/';
        }else {
            *cptr = *ccptr;
        }
        cptr++;
    }
    *cptr = '\0';

    if(type && parent_name)
    {
        /* Search directory of parent include and then -I path */
        const char *p;

        if ((p = FUNC8( parent_name, '/' ))) p++;
        else p = parent_name;
        path = FUNC4( (p - parent_name) + FUNC7(cpy) + 1 );
        if(!path)
        {
            FUNC1(cpy);
            return NULL;
        }
        FUNC2( path, parent_name, p - parent_name );
        FUNC6( path + (p - parent_name), cpy );
        fd = FUNC3( path, O_RDONLY );
        if (fd != -1)
        {
            FUNC0( fd );
            FUNC1( cpy );
            return path;
        }
        FUNC1( path );
    }
    /* Search -I path */
    for(i = 0; i < include_path_count; i++)
    {
        path = FUNC4(FUNC7(include_path[i]) + FUNC7(cpy) + 2);
        if(!path)
        {
            FUNC1(cpy);
            return NULL;
        }
        FUNC6(path, include_path[i]);
        FUNC5(path, "/");
        FUNC5(path, cpy);
        fd = FUNC3( path, O_RDONLY );
        if (fd != -1)
        {
            FUNC0( fd );
            FUNC1( cpy );
            return path;
        }
        FUNC1( path );
    }
    FUNC1( cpy );
    return NULL;
}