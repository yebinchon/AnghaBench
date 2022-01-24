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
struct DbgHelpStringTab {unsigned int Length; char*** Table; int /*<<< orphan*/  Bytes; } ;

/* Variables and functions */
 unsigned int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char** FUNC3 (char**,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(struct DbgHelpStringTab *tab, char *name)
{
    unsigned int bucket = FUNC0(name) % tab->Length;
    char **tabEnt = tab->Table[bucket];
    int i;
    char **newBucket;

    if (tabEnt)
    {
        for (i = 0; tabEnt[i] && FUNC4(tabEnt[i], name); i++);
        if (tabEnt[i])
        {
            FUNC2(name);
            return (i << 10) | bucket;
        }
    }
    else
        i = 0;

    /* At this point, we need to insert */
    tab->Bytes += FUNC5(name) + 1;

    newBucket = FUNC3(tab->Table[bucket], (i+2) * sizeof(char *));

    if (!newBucket)
    {
        FUNC1(stderr, "realloc failed!\n");
        return -1;
    }

    tab->Table[bucket] = newBucket;
    tab->Table[bucket][i+1] = 0;
    tab->Table[bucket][i] = name;
    return (i << 10) | bucket;
}