#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* buf; char* name; char* path; scalar_t__ Size; int /*<<< orphan*/  RelBase; int /*<<< orphan*/  ImageBase; } ;
typedef  TYPE_1__* PLIST_MEMBER ;
typedef  int /*<<< orphan*/  LIST_MEMBER ;

/* Variables and functions */
 int /*<<< orphan*/  INVALID_BASE ; 
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (char*,char*,unsigned int*) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 

PLIST_MEMBER
FUNC7(char *Line)
{
    PLIST_MEMBER pentry;
    char *s = NULL;
    int l;

    if (!Line)
        return NULL;

    pentry = FUNC2(sizeof(LIST_MEMBER));
    if (!pentry)
        return NULL;

    l = FUNC6(Line);
    pentry->buf = s = FUNC2(l + 1);
    if (!s)
    {
        FUNC1(1, "Alloc entry failed\n");
        return FUNC0(pentry);
    }

    FUNC5(s, Line);
    if (s[l] == '\n')
        s[l] = '\0';

    pentry->name = s;
    s = FUNC4(s, '|');
    if (!s)
    {
        FUNC1(1, "Name field missing\n");
        return FUNC0(pentry);
    }
    *s++ = '\0';

    pentry->path = s;
    s = FUNC4(s, '|');
    if (!s)
    {
        FUNC1(1, "Path field missing\n");
        return FUNC0(pentry);
    }
    *s++ = '\0';
    if (1 != FUNC3(s, "%x", (unsigned int *)(&pentry->ImageBase)))
    {
        FUNC1(1, "ImageBase field missing\n");
        return FUNC0(pentry);
    }
    pentry->RelBase = INVALID_BASE;
    pentry->Size = 0;
    return pentry;
}