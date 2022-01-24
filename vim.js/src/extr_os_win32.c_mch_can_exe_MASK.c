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
typedef  char char_u ;

/* Variables and functions */
 int FALSE ; 
 char NUL ; 
 scalar_t__ FUNC0 (char*) ; 
 int TRUE ; 
 int _MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,int,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 char* p_sh ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

int
FUNC8(char_u *name)
{
    char_u	buf[_MAX_PATH];
    int		len = (int)FUNC0(name);
    char_u	*p;

    if (len >= _MAX_PATH)	/* safety check */
	return FALSE;

    /* If there already is an extension try using the name directly.  Also do
     * this with a Unix-shell like 'shell'. */
    if (FUNC6(FUNC3(name), '.') != NULL
			       || FUNC5((char *)FUNC3(p_sh), "sh") != NULL)
	if (FUNC2((char *)name))
	    return TRUE;

    /*
     * Loop over all extensions in $PATHEXT.
     */
    FUNC7(buf, name, _MAX_PATH - 1);
    p = FUNC4("PATHEXT");
    if (p == NULL)
	p = (char_u *)".com;.exe;.bat;.cmd";
    while (*p)
    {
	if (p[0] == '.' && (p[1] == NUL || p[1] == ';'))
	{
	    /* A single "." means no extension is added. */
	    buf[len] = NUL;
	    ++p;
	    if (*p)
		++p;
	}
	else
	    FUNC1(&p, buf + len, _MAX_PATH - len, ";");
	if (FUNC2((char *)buf))
	    return TRUE;
    }
    return FALSE;
}