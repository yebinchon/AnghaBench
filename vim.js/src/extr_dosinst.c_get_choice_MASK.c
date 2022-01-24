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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (char*,...) ; 

__attribute__((used)) static int
FUNC2(char **table, int entries)
{
    int		answer;
    int		idx;
    char	dummy[100];

    do
    {
	for (idx = 0; idx < entries; ++idx)
	{
	    if (idx)
		FUNC0("%2d  ", idx);
	    FUNC0(table[idx]);
	    FUNC0("\n");
	}
	FUNC0("Choice: ");
	if (FUNC1("%d", &answer) != 1)
	{
	    FUNC1("%99s", dummy);
	    answer = 0;
	}
    }
    while (answer < 1 || answer >= entries);

    return answer;
}