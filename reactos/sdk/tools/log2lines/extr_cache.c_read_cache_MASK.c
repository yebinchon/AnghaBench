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
struct TYPE_3__ {int /*<<< orphan*/ * ptail; int /*<<< orphan*/  phead; } ;
typedef  int /*<<< orphan*/  LIST_MEMBER ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LINESIZE ; 
 TYPE_1__ cache ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 char* cache_name ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 

int
FUNC6(void)
{
    FILE *fr;
    LIST_MEMBER *pentry;
    char Line[LINESIZE + 1];
    int result = 0;

    Line[LINESIZE] = '\0';

    fr = FUNC4(cache_name, "r");
    if (!fr)
    {
        FUNC5(1, "Open %s failed\n", cache_name);
        return 2;
    }
    cache.phead = *(cache.ptail = NULL);

    while (FUNC3(Line, LINESIZE, fr) != NULL)
    {
        pentry = FUNC0(Line);
        if (!pentry)
        {
            FUNC5(2, "** Create entry failed of: %s\n", Line);
        }
        else
            FUNC1(&cache, pentry);
    }

    FUNC2(fr);
    return result;
}