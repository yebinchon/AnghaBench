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
 char* FUNC0 (char*,char) ; 
 char* FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

char *FUNC3(char *s, const char *delim, char **save_ptr)
{
    char *token;

    if (s == NULL)
        s = *save_ptr;

    /* Scan leading delimiters. */
    s += FUNC2 (s, delim);
    if (*s == '\0')
        return NULL;

    /* Find the end of the token. */
    token = s;
    s = FUNC1 (token, delim);
    if (s == NULL)
        /* This token finishes the string. */
        *save_ptr = FUNC0 (token, '\0');
    else
    {
        /* Terminate the token and make *SAVE_PTR point past it. */
        *s = '\0';
        *save_ptr = s + 1;
    }
    return token;
}