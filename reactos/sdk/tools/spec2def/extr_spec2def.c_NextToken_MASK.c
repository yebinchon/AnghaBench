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
 int /*<<< orphan*/  FUNC0 (char const) ; 

const char *
FUNC1(const char *pc)
{
    /* Skip token */
    while (!FUNC0(*pc)) pc++;

    /* Skip white spaces */
    while (*pc == ' ' || *pc == '\t') pc++;

    /* Check for end of line */
    if (*pc == '\n' || *pc == '\r' || *pc == 0) return 0;

    /* Check for comment */
    if (*pc == '#' || *pc == ';') return 0;

    return pc;
}