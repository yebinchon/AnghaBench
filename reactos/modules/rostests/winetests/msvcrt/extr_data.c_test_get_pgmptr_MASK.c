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
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (char**) ; 

__attribute__((used)) static void FUNC2(void)
{
    char *pgm = NULL;
    int res;

    if (!&p_get_pgmptr)
        return;

    res = FUNC1(&pgm);

    FUNC0( res == 0, "Wrong _get_pgmptr return value %d expected 0\n", res);
    FUNC0( pgm != NULL, "_get_pgmptr returned a NULL pointer\n" );
}