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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

unsigned long
FUNC2(FILE *finx, int *rev)
{
    unsigned long pos = 0L;

    while (!FUNC1(finx, (*rev) * sizeof(unsigned long), SEEK_SET))
    {
        FUNC0(&pos, sizeof(long), 1, finx);
        (*rev)--;
        if (pos)
            break;
    }
    return pos;
}