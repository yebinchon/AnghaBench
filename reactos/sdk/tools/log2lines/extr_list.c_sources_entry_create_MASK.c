#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* buf; char* name; } ;
typedef  TYPE_1__* PLIST_MEMBER ;
typedef  scalar_t__ PLIST ;
typedef  int /*<<< orphan*/  LIST_MEMBER ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 

PLIST_MEMBER
FUNC8(PLIST list, char *path, char *prefix)
{
    PLIST_MEMBER pentry;
    char *s = NULL;
    int l;

    if (!path)
        return NULL;
    if (!prefix)
        prefix = "";

    pentry = FUNC4(sizeof(LIST_MEMBER));
    if (!pentry)
        return NULL;

    l = FUNC7(path) + FUNC7(prefix);
    pentry->buf = s = FUNC4(l + 1);
    if (!s)
    {
        FUNC3(1, "Alloc entry failed\n");
        return FUNC0(pentry);
    }

    FUNC6(s, prefix);
    FUNC5(s, path);
    if (s[l] == '\n')
        s[l] = '\0';

    pentry->name = s;
    if (list)
    {
        if (FUNC2(list, pentry->name))
        {
            FUNC3(1, "Entry %s exists\n", pentry->name);
            pentry = FUNC0(pentry);
        }
        else
        {
            FUNC3(1, "Inserting entry %s\n", pentry->name);
            FUNC1(list, pentry);
        }
    }

    return pentry;
}