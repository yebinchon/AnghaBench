#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATAA ;
typedef  scalar_t__ HANDLE ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static DWORD FUNC5(const char* shortpath, char* longpath, DWORD longlen)
{
    char tmplongpath[MAX_PATH];
    const char* p;
    DWORD sp = 0, lp = 0;
    DWORD tmplen;
    WIN32_FIND_DATAA wfd;
    HANDLE goit;

    if (!shortpath || !shortpath[0])
        return 0;

    if (shortpath[1] == ':')
    {
        tmplongpath[0] = shortpath[0];
        tmplongpath[1] = ':';
        lp = sp = 2;
    }

    while (shortpath[sp])
    {
        /* check for path delimiters and reproduce them */
        if (shortpath[sp] == '\\' || shortpath[sp] == '/')
        {
            if (!lp || tmplongpath[lp-1] != '\\')
            {
                /* strip double "\\" */
                tmplongpath[lp++] = '\\';
            }
            tmplongpath[lp] = 0; /* terminate string */
            sp++;
            continue;
        }

        p = shortpath + sp;
        if (sp == 0 && p[0] == '.' && (p[1] == '/' || p[1] == '\\'))
        {
            tmplongpath[lp++] = *p++;
            tmplongpath[lp++] = *p++;
        }
        for (; *p && *p != '/' && *p != '\\'; p++);
        tmplen = p - (shortpath + sp);
        FUNC2(tmplongpath + lp, shortpath + sp, tmplen + 1);
        /* Check if the file exists and use the existing file name */
        goit = FUNC1(tmplongpath, &wfd);
        if (goit == INVALID_HANDLE_VALUE)
            return 0;
        FUNC0(goit);
        FUNC3(tmplongpath + lp, wfd.cFileName);
        lp += FUNC4(tmplongpath + lp);
        sp += tmplen;
    }
    tmplen = FUNC4(shortpath) - 1;
    if ((shortpath[tmplen] == '/' || shortpath[tmplen] == '\\') &&
        (tmplongpath[lp - 1] != '/' && tmplongpath[lp - 1] != '\\'))
        tmplongpath[lp++] = shortpath[tmplen];
    tmplongpath[lp] = 0;

    tmplen = FUNC4(tmplongpath) + 1;
    if (tmplen <= longlen)
    {
        FUNC3(longpath, tmplongpath);
        tmplen--; /* length without 0 */
    }

    return tmplen;
}