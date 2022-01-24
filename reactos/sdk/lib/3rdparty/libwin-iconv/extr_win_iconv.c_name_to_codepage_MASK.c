#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int codepage; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int FUNC0 () ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int FUNC3 (char const*) ; 
 TYPE_1__* codepage_alias ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int
FUNC5(const char *name)
{
    int i;

    if (*name == '\0' ||
	FUNC4(name, "char") == 0)
        return FUNC0();
    else if (FUNC4(name, "wchar_t") == 0)
        return 1200;
    else if (FUNC2(name, "cp", 2) == 0)
        return FUNC3(name + 2); /* CP123 */
    else if ('0' <= name[0] && name[0] <= '9')
        return FUNC3(name);     /* 123 */
    else if (FUNC2(name, "xx", 2) == 0)
        return FUNC3(name + 2); /* XX123 for debug */

    for (i = 0; codepage_alias[i].name != NULL; ++i)
        if (FUNC1(name, codepage_alias[i].name) == 0)
            return codepage_alias[i].codepage;
    return -1;
}